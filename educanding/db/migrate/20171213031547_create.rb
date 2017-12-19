class Create < ActiveRecord::Migration[5.1]
  create_table :labels_questions do |t|
    t.integer :Label_id , index:true
    t.integer :Question_id, index:true
    t.timestamps
  end

end
