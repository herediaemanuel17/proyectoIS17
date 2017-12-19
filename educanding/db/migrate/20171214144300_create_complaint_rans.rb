class CreateComplaintRans < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_rans do |t|
      t.string :motivo
      t.integer :remarkan_id
      t.integer :user_id

      t.timestamps
    end
  end
end
