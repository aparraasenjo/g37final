class Designer < ApplicationRecord
  has_many :works
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def to_s
    name
  end
end
