class Theme < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy

  validates :name, presence: true
end
