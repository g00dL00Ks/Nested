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

require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
