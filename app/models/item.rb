class Item < ApplicationRecord
	belogns_to :category
	belogns_to :user

end
