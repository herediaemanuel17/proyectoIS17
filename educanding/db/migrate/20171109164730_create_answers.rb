class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :descripcion
      t.integer :User_id
      t.integer :Question_id

      t.timestamps
    end
  end
end
