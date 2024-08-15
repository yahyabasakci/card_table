class Card < ApplicationRecord
  has_rich_text :description
  belongs_to :user
  belongs_to :column
  
  validates :title, presence: true
  validates :description, presence: true

end
