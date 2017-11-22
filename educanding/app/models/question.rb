class Question < ApplicationRecord
  belongs_to :User,optional:true
  belongs_to :Univercity,optional:true
  has_many :Labels
  has_many :Answers, dependent: :destroy
  has_many :VoteQs, dependent: :destroy
  has_many :RemarkQs, dependent: :destroy
  has_many :ComplaintQs, dependent: :destroy
end
