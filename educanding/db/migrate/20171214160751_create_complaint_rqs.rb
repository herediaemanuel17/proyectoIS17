class CreateComplaintRqs < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_rqs do |t|
      t.string :motivo
      t.integer :remarkq_id
      t.integer :user_id
      t.timestamps
    end
  end
end
