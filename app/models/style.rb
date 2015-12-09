# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  approach    :integer
#  intensity   :integer
#  plan   		:integer
#  pro_id     :integer
#  created_at :datetime
#  updated_at :datetime
#


class Style < ActiveRecord::Base
  belongs_to :pro
end
