# == Schema Information
#
# Table name: pros
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Pro < ActiveRecord::Base
	has_one :workout, dependent: :destroy
	accepts_nested_attributes_for :workout, reject_if: :all_blank, allow_destroy: true
end
