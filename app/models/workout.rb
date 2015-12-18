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
  belongs_to :pro, inverse_of: :workout

  validate :at_least_one_type

  private
    def at_least_one_type
      if [self.weights, self.yoga, self.running].reject(&:blank?).size == 0
        errors.add(:weights, 'You need to specify at least one type.')
        errors.add(:yoga, 'You need to specify at least one type.')
        errors.add(:running, 'You need to specify at least one type.')
      end
    end
end
