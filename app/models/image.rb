class Image < ApplicationRecord
  belongs_to :theme

  has_one_attached :photo

  validates :description, presence: true
end
