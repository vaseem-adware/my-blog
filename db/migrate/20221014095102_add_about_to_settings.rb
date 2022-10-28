class AddAboutToSettings < ActiveRecord::Migration[6.1]
  def change
    add_column :settings, :about, :text
  end
end
