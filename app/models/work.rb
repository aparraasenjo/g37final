class Work < ApplicationRecord
  belongs_to :designer
  has_one_attached :file
  acts_as_taggable_on :tags
  has_many :work_mates, dependent: :destroy
  has_many :producers, through: :work_mates
end
