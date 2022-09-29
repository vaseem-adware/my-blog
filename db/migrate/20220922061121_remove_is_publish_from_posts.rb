class RemoveIsPublishFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :is_publish, :boolean
  end
end
