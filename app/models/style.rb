# == Schema Information
#
# Table name: styles
#
#  id         :integer          not null, primary key
#  approach   :integer
#  intensity  :integer
#  plan       :integer
#  pro_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Style < ActiveRecord::Base
  belongs_to :pro

  APPROACH  = [
    ['Hard Core and fast-paced.', 10],
    ['Thorough and detailed.', 1]
  ]
  INTENSITY = [
    ['Exhausted but the good kind of sore.', 10],
    ['Energized after a solid workout.', 1]
  ]
  PLAN      = [
    ['has a clear and proven method to help me change my body.', 10],
    ['creates a customized plan based on my goals and preferences.', 1]
  ]
end
