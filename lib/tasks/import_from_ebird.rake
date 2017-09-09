desc "import data from ebird"
task :import_from_ebird, [:filepath] => [:environment] do |_t, args|
  require 'csv'

  puts "Bird count: #{Bird.count}"
  puts "Running..."    

  species_group = nil
  failed_rows = []

  handler = open(args.filepath)
  csv_string = handler.read.encode!("UTF-8", "iso-8859-1", invalid: :replace)
  CSV.parse(csv_string, headers: true) do |row|

  # CSV.foreach(args.filepath, headers: true) do |row|
    begin
      # only first row of the species group has the species column populated
      species_group = row["SPECIES_GROUP"] || species_group

      bird = Bird.find_or_initialize_by(common_name: row["PRIMARY_COM_NAME"])
      bird.scientific_name = row["SCI_NAME"]
      bird.order = row["ORDER1"]
      bird.family = row["FAMILY"]
      bird.species_group = species_group
      bird.save!
    rescue => error
      puts error
      failed_rows << ""
    end
  end

  puts "Bird count: #{Bird.count}"
  puts "Failed rows: #{failed_rows.size}"
end
