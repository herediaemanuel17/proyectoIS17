class Delete < ActiveRecord::Migration[5.1]
  def self.down
     remove_column :Univercity, :User_id
     remove_column :Question, :Label_id
   end
end
