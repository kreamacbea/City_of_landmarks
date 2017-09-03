class Landmark < ApplicationRecord
  belongs_to :city

  scope :order_by_city, -> { order(:city) }

  validates :name, presence: true
  validates :kind, presence: true
  validates :image_url, presence: true

end
