class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  has_many :bookings, class_name: "Booking", foreign_key: "booking_id"

  validates :name, presence: true         
=======
<<<<<<< HEAD
  has_many :bookings, class_name: "Booking", foreign_key: "booking_id"

  validates :name, presence: true         
=======
<<<<<<< HEAD
  has_many :booking

  validates :name, presence: true         
=======
   validates :name, presence: true         
>>>>>>> origin/master
>>>>>>> origin/master
>>>>>>> origin/master
end
