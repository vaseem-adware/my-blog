class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :full_name
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
