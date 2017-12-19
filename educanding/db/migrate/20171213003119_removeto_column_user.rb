class RemovetoColumnUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users , :puntos
  end
end
