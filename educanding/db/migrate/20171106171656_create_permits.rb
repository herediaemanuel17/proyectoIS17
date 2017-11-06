class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.string :acciones
      t.integer :puntos

      t.timestamps
    end
  end
end
