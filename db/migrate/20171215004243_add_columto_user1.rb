class AddColumtoUser1 < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :activa, :boolean, :default => true, :null => false
  end
end
