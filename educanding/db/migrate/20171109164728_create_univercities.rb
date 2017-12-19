class CreateUnivercities < ActiveRecord::Migration[5.1]
  def change
    create_table :univercities do |t|
      t.string :nombre
      t.string :direccion
      t.string :pais
      t.integer :User_id

      t.timestamps
    end
  end
end
