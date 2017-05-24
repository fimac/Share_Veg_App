class AddSlugToUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :slug, unique: true
  end
end
