class PlantTag < ApplicationRecord
  belongs_to :tag
  belongs_to :plant
  validates :tag, uniqueness: { scope: :plant }
end
