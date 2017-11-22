class Answer < ApplicationRecord
  belongs_to :User
  belongs_to :Question, optional:true
  has_many :VoteAns
  has_many :RemarkAns
end
