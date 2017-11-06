class CreateRemarkQs < ActiveRecord::Migration[5.1]
  def change
    create_table :remark_qs do |t|
      t.string :descripcion
      t.integer :Question_id
      t.integer :User_id

      t.timestamps
    end
  end
end
