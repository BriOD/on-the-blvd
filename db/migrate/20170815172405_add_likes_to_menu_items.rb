class AddLikesToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_items, :likes, :integer, :default => 0
  end
end
