class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  rest = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: rest }
  validates :category, presence: true
end
