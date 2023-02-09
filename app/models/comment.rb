class Comment < ApplicationRecord
  # Associations
  belongs_to :author, class_name: "User"
  belongs_to :post

  # Validations
  validates :message, presence: true, length: { maximum: 250 }
end
