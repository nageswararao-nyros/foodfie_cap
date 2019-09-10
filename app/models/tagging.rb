class Tagging < ApplicationRecord
  validates :tag_name, presence: true, length: { in:4..6 }
end
