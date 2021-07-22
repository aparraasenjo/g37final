class Work < ApplicationRecord
  belongs_to :designer
  has_one_attached :file
end
