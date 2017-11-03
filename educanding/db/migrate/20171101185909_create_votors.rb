class CreateVotors < ActiveRecord::Migration[5.1]
  def change
    create_table :votors do |t|
      t.string :tipodevoto

      t.timestamps
    end
  end
end
