class CreateComentariors < ActiveRecord::Migration[5.1]
  def change
    create_table :comentariors do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
