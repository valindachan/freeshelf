class ChangePostsToBooks < ActiveRecord::Migration[5.1]
  def change
    rename_table :posts, :books
  end
end
