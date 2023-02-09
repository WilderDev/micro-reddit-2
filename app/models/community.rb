class Community < ApplicationRecord
  # Associations
  belongs_to :creator, class_name: "User"
  has_many :posts

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25 }
end
