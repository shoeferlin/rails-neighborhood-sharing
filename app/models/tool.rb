class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  # include PgSearch
  # pg_search_scope :global_search,
  #   against: [ :name, :description ],
  #   associated_against: {
  #     user: [ :email ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  include PgSearch
  multisearchable against: [ :name, :description, :category ]
end
