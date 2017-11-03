class CreateRespuesta < ActiveRecord::Migration[5.1]
  def change
    create_table :respuesta do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
