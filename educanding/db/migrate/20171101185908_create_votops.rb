class CreateVotops < ActiveRecord::Migration[5.1]
  def change
    create_table :votops do |t|
      t.string :tipodevoto

      t.timestamps
    end
  end
end
