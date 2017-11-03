class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :reputacion
      t.string :foto_de_perfil
      t.string :tipo
      t.string :email
      t.string :contraseña

      t.timestamps
    end
  end
end
