class Dish < ApplicationRecord
  has_attached_file :image
  has_and_belongs_to_many :restaurants

  has_attached_file :image, styles: {
        thumb: '10x10>',
        medium: '50x50>',
        processors: [:thumbnail]}, default_url: "/images/:style/missing.png" 
  validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)},
  attachment_size: { less_than: 5.megabytes }
  validates :name, :price, :rating, :tagging_id, presence: true
end
