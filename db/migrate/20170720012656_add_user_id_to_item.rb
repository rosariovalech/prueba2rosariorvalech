class AddUserIdToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :user, foreign_key: true
    add_reference :items, :category, foreign_key: true
  end
end