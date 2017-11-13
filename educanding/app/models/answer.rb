class Answer < ApplicationRecord
  belongs_to :User
  belongs_to :Question, optional:true
  has_many :RemarkAns
end
