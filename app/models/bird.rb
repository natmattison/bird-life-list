# == Schema Information
#
# Table name: birds
#
#  id              :integer          not null, primary key
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  scientific_name :text
#  order           :text
#  family          :text
#  species_group   :text
#  common_name     :text             not null
#

class Bird < ActiveRecord::Base

  has_many :sightings

end
