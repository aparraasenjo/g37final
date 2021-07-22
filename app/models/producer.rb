class Producer < ApplicationRecord
  has_many :tracks
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
