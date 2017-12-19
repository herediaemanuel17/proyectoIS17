class CreateVoteQs < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_qs do |t|
      t.boolean :positivo
      t.integer :User_id
      t.integer :Question_id

      t.timestamps
    end
  end
end
