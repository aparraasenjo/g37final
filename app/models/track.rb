class Track < ApplicationRecord
  belongs_to :producer
  has_one_attached :file
end
