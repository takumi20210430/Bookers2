class RenamePostImageBook < ActiveRecord::Migration[5.2]
  def change
    rename_table :post_images, :books
  end
end
