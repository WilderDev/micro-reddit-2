class Post < ApplicationRecord
  # Associations
  belongs_to :author, class_name: "User"
  belongs_to :community
  has_many :comments

  # Validations
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :content, presence: true, length: {minimum: 10, maximum: 1000 }
end
