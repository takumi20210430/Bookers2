class RemoveImageIdFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :Image_id, :string
  end
end
