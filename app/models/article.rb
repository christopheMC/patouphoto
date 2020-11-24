class Article < ApplicationRecord
  belongs_to :user

  has_many_attached :photos, dependent: :destroy

  has_rich_text :rich_body

  validates :title, :body, presence: true
end
