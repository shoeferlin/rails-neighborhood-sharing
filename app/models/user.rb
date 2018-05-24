class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :owned_tools, dependent: :destroy, class_name: "Tool"
  has_many :bookings, dependent: :destroy
  has_many :booked_tools, through: :bookings, source: "tool", foreign_key: "tool_id"

  include PgSearch
  multisearchable against: [ :email, :address ]

end
