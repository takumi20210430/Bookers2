class RemoveShopNameFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :Shop_name, :text
  end
end
