class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :foto_de_perfil, :string
    add_column :users, :puntos, :integer, :default => 1, :null => false
    add_column :users, :Univercity_id, :integer
    add_column :users, :Permit_id, :integer
  end
end
