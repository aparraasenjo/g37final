class WorkMate < ApplicationRecord
  belongs_to :work
  belongs_to :producer
  enum state: [:pending, :accepted, :rejected]
end
