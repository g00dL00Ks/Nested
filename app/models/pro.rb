# == Schema Information
#
# Table name: pros
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Pro < ActiveRecord::Base
  has_many :bookings
	has_one  :workout,  inverse_of: :pro, dependent: :destroy
	has_one  :location, inverse_of: :pro, dependent: :destroy	
	has_one  :style,    inverse_of: :pro, dependent: :destroy

  accepts_nested_attributes_for :workout,
    reject_if: :all_blank, 
    allow_destroy: true
	accepts_nested_attributes_for :location,
    reject_if: :all_blank, 
    allow_destroy: true	
	accepts_nested_attributes_for :style,
    reject_if: :all_blank, 
    allow_destroy: true
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :description, presence: true
end
