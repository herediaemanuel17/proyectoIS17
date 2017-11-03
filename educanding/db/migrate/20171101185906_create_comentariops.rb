class CreateComentariops < ActiveRecord::Migration[5.1]
  def change
    create_table :comentariops do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
