class Image < ApplicationRecord
  belongs_to :animal
  has_one_attached :photo

  validates :description, presence: true
end
