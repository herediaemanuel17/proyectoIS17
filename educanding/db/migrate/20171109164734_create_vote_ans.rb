class CreateVoteAns < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_ans do |t|
      t.boolean :positivo
      t.integer :User_id
      t.integer :Answer_id

      t.timestamps
    end
  end
end
