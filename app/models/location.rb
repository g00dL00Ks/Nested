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
  belongs_to :pro, inverse_of: :location

  validate :at_least_one_location

  private
    def at_least_one_location
      if [self.hollywood, self.westside, self.valley, self.century_city].reject(&:blank?).size == 0
        errors.add(:hollywood, 'You need to specify at least one location.')
        errors.add(:westside, 'You need to specify at least one location.')
        errors.add(:valley, 'You need to specify at least one location.')
        errors.add(:century_city, 'You need to specify at least one location.')
      end
    end
end
