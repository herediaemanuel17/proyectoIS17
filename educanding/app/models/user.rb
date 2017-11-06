class User < ApplicationRecord
  belongs_to :Univercity
  belongs_to :Permit
  has_many :Questions
  has_many :Answers
  has_many :RemarkQs
  has_many :RemarkAns
  has_many :VoteQs
  has_many :VoteAns
  has_many :ComplaintQs
  has_many :ComplaintAns
end
