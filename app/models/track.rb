class Track < ApplicationRecord
  belongs_to :producer
  has_one_attached :file
  acts_as_taggable_on :tags
  has_many :track_mates, dependent: :destroy
  has_many :designers, through: :track_mates
end
