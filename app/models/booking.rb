# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  pro_id     :integer
#  genre      :string(255)
#  date       :date
#  time       :time
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Booking < ActiveRecord::Base
   belongs_to :pro
   belongs_to :user
   
	 validates :genre, :date, :time, :location, presence: true
end
