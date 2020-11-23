class Article < ApplicationRecord
  has_many_attached :photos

  validates :title, :body, presence: true
end
