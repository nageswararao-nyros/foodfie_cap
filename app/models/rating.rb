class Rating < ApplicationRecord
  after_save :rating_avg
end
