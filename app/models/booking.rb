#  create_table :bookings do |t|
#     t.integer :user_id
#      t.integer :pro_id
#      t.string :type
#      t.date :date
#      t.time :time
#      t.string :location
#      t.timestamps
 

class Booking < ActiveRecord::Base
	 validates  :date, :time, :location, presence: true

	 belongs_to :pro, class_name: "Pro"
 	 belongs_to :user, class_name: "User"

end