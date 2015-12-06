# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  weights    :boolean
#  yoga       :boolean
#  running    :boolean
#  pro_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Workout < ActiveRecord::Base
  belongs_to :pro
end
