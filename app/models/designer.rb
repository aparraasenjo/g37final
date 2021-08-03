class Designer < ApplicationRecord
  has_many :works
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def to_s
    name
  end
  has_many :track_mates, dependent: :destroy
  has_many :tracks, through: :track_mates
end
