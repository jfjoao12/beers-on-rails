class Beer < ApplicationRecord
  belongs_to :company

  validates :name, :price, :description, presence: true
  validates :price, numericality: { greater_than: 0 }
end
