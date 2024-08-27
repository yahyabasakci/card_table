class Column < ApplicationRecord
  has_many :cards, dependent: :destroy
  validates :title, presence: true, length: {maximum: 20 }
  validates :description, presence: true
  validates :color_code, presence: true
end
