class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :foto_de_perfil
      t.integer :puntos
      t.string :password
      t.integer :Univercity_id
      t.integer :Permit_id

      t.timestamps
    end
  end
end
#
