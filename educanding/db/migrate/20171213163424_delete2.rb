class Delete2 < ActiveRecord::Migration[5.1]
  def change
    drop_table :labels_questions
    create_table :labels_questions do |t|
      t.integer :label_id , index:true
      t.integer :question_id, index:true
      t.timestamps
    end
  end
end
