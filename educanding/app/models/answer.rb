class Answer < ApplicationRecord
  belongs_to :User, optional:true, foreign_key: "User_id"
  belongs_to :Question, optional:true
  has_many :VoteAns, dependent: :destroy
  has_many :RemarkAns, dependent: :destroy
end
