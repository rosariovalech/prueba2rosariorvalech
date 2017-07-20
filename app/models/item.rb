class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user

	scope :size_x, ->(x) { where(size: x) }
	scope :without_user, -> { where(user_id: nil) }

	after_destroy :destruir
	
	def destruir
		category.destroy if self.category.items.count == 0   	
	end	
end
