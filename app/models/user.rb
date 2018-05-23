class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :owned_tools, dependent: :destroy, class_name: "Tool"
  has_many :bookings, dependent: :destroy
  has_many :booked_tools, through: :bookings, source: "tool", foreign_key: "tool_id"
end
