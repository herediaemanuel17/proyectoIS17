class AddColumtoUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :puntos, :integer, :default => 1, :null => false
  end
end
