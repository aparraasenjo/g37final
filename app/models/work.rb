class Work < ApplicationRecord
  belongs_to :designer
  has_one_attached :file
  acts_as_taggable_on :tags
end
