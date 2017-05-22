class AddPublicIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :public_id, :text 
  end
end
