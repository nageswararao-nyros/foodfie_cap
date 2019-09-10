class Restaurant < ApplicationRecord
  has_and_belongs_to_many :dishes
  belongs_to :location
end
