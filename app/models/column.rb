class Column < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :color_code, presence: true
end
