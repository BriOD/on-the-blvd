class ChangeNameToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :menu_items, :name, :title
  end
end
