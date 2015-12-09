class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :pro_id
      t.string :type
      t.date :date
      t.time :time
      t.string :location


      t.timestamps
    end
  end
end
