class User < ApplicationRecord
	# Associations
	has_many :communities, foreign_key: :creator_id
	has_many :posts, foreign_key: :author_id
	has_many :comments, foreign_key: :author_id
	has_many :feed, through: :communities, source: :posts


	# Validations
	validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 15 }
	validates :email, presence: true, uniqueness: true
end
