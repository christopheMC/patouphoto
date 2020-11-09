class Animal < ApplicationRecord
  has_many_attached :photos

  validates :name, presence: true
end
