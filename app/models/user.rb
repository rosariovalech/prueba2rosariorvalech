class User < ApplicationRecord
	has_many :items

	validates :name, presence: true
	validates :email, uniqueness: true 

	before_save :names_db

	def names_db
		name.titleize
	end
end
