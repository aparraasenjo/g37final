class Producer < ApplicationRecord
  has_many :tracks, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def to_s
    name
  end
  has_many :work_mates, dependent: :destroy
  has_many :works, through: :work_mates
end
