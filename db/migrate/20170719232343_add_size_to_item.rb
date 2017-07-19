class AddSizeToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :size, :integer
  end
end
