class RemarkQ < ApplicationRecord
  belongs_to :User, optional:true, foreign_key: "User_id"
  belongs_to :Question, optional:true
end
