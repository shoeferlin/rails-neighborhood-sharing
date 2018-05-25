class Review < ApplicationRecord
  belongs_to :tool
  validates :content, length: { minimum: 20 }
end
