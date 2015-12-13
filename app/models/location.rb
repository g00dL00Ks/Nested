# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  hollywood    :boolean
#  westside     :boolean
#  valley       :boolean
#  century_city :boolean
#  pro_id       :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Location < ActiveRecord::Base
  belongs_to :pro
end
