class AddPageViewToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :page_view, :integer, default: 0
  end
end
