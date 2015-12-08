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
