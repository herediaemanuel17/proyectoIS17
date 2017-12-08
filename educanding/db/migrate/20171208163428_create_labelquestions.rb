class CreateLabelquestions < ActiveRecord::Migration[5.1]
  def change
    create_table :labelquestions do |t|
      t.integer :Label_id
      t.integer :Question_id

      t.timestamps
    end
  end
end
