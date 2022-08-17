class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
  validates :banner_url, format: { with: /\Ahttp.+\.(jpg|png)\z/ }
  has_many :plants
end
