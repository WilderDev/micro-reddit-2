class User < ApplicationRecord
	# Associations

	# Validations
	validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 15 }
	validates :email, presence: true, uniqueness: true
end
