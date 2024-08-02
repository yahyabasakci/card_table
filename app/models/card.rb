class Card < ApplicationRecord
  belongs_to :user
  belongs_to :column
  
  validates :title, presence: true
  validates :description, presence: true

end
