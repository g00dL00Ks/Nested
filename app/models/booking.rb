# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  pro_id     :integer
#  type       :string(255)
#  date       :date
#  time       :time
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

#  create_table :bookings do |t|
#     t.integer :user_id
#      t.integer :pro_id
#      t.string :type
#      t.date :date
#      t.time :time
#      t.string :location
#      t.timestamps
 

class Booking < ActiveRecord::Base
	 validates :type, :date, :time, :location, presence: true
	 belongs_to :pro
	 belongs_to :user
end
