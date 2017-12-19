class CreateRemarkAns < ActiveRecord::Migration[5.1]
  def change
    create_table :remark_ans do |t|
      t.string :descripcion
      t.integer :Answer_id
      t.integer :User_id

      t.timestamps
    end
  end
end
