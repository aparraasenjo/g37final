class TrackMate < ApplicationRecord
  belongs_to :track
  belongs_to :designer
  enum state: [:pending, :accepted, :rejected]
end
