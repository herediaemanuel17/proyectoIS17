class Question < ApplicationRecord
  belongs_to :User
  belongs_to :Univercity
  has_many :Labels
  has_many :Questions
  has_many :VoteQs
  has_many :RemarkQs
  has_many :ComplaintQs
end
