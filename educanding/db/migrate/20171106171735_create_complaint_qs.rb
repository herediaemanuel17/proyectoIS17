class CreateComplaintQs < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_qs do |t|
      t.string :motivo
      t.integer :Question_id
      t.integer :User_id

      t.timestamps
    end
  end
end
