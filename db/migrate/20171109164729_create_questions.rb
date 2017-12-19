class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :descripcion
      t.string :titulo
      t.integer :User_id
      t.integer :Univercity_id
      t.integer :Label_id
      t.integer :Resc_id

      t.timestamps
    end
  end
end
