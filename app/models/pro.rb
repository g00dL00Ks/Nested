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
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

<<<<<<< HEAD
  has_many :bookings

=======
>>>>>>> origin/master
	has_one :workout, dependent: :destroy
	has_one :location, dependent: :destroy	
	has_one :style, dependent: :destroy
	accepts_nested_attributes_for :workout, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :location, reject_if: :all_blank, allow_destroy: true	
	accepts_nested_attributes_for :style, reject_if: :all_blank, allow_destroy: true
end
