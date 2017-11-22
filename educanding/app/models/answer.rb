class Answer < ApplicationRecord
  belongs_to :User
  belongs_to :Question, optional:true
  has_many :VoteAns, dependent: :destroy
  has_many :RemarkAns, dependent: :destroy
end
