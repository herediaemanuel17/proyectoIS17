class Question < ApplicationRecord
  belongs_to :User,optional:true
  belongs_to :Univercity,optional:true
  has_many :Labels
  has_many :Questions
  has_many :VoteQs
  has_many :RemarkQs
  has_many :ComplaintQs
end
