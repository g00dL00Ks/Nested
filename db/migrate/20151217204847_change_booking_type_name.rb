class ChangeBookingTypeName < ActiveRecord::Migration
  def change
    rename_column :bookings, :type, :genre
  end
end
