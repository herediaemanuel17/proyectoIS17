class CrearTabla < ActiveRecord::Migration[5.1]
  def change
    drop_table :labels_questions
    create_table :labels_questions do |t|
      t.belongs_to :Label, index: true
      t.belongs_to :Question, index: true
  end
end
end
