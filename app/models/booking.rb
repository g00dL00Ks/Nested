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

<<<<<<< HEAD
	 belongs_to :pro, class_name: "Pro"
 	 belongs_to :user, class_name: "User"

=======
	 belongs_to :pro
	 belongs_to :user
	 
>>>>>>> origin/master
end
