class Restaurant < ApplicationRecord
  CATEGORY = ['french', 'belgian', 'japanese', 'chinese', 'italian']  
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
