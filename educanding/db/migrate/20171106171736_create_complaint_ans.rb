class CreateComplaintAns < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_ans do |t|
      t.string :motivo
      t.integer :Answer_id
      t.integer :User_id

      t.timestamps
    end
  end
end
