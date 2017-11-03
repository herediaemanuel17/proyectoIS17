class CreateUniversidads < ActiveRecord::Migration[5.1]
  def change
    create_table :universidads do |t|
      t.string :nombre_de_facultad

      t.timestamps
    end
  end
end
