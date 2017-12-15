class Answer < ApplicationRecord
  belongs_to :User, optional:true, foreign_key: "User_id"
  belongs_to :Question, optional:true,foreign_key: "Question_id"
  has_many :VoteAns, dependent: :destroy,foreign_key: "Answer_id"
  has_many :RemarkAns, dependent: :destroy,foreign_key: "Answer_id"
  has_many :ComplaintAns, dependent: :destroy,foreign_key: "Answer_id"
end
