class AddIsPublishToPosts < ActiveRecord::Migration[6.1]
  def change
		add_column :posts, :is_publish, :boolean, default: false
	end
end

