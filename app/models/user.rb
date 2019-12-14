class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 validates :email, uniqueness: true, presence: true
 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :phone, presence: true


end
