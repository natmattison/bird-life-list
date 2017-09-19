# == Schema Information
#
# Table name: sightings
#
#  id          :integer          not null, primary key
#  bird_id     :integer
#  user_id     :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  zip_code    :text
#  seen_at     :datetime
#

class Sighting < ActiveRecord::Base
  belongs_to :user
  belongs_to :bird
end
