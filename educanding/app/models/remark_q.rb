class RemarkQ < ApplicationRecord
  belongs_to :User, optional:true, foreign_key: "User_id"
  belongs_to :Question, optional:true,foreign_key: "Question_id"
  has_many :ComplaintRqs, dependent: :destroy, foreign_key: "remarkq_id"
end
