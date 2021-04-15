class RemoveCaptionFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :Caption, :text
  end
end
