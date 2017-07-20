class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user

	scope :size_x, ->(x) { where(size: x) }
	scope :without_user, includes(:user).where(:user => { :id => nil })
end
