class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :Univercity,optional:true
  belongs_to :Permit,optional:true
  has_many :Questions
  has_many :Answers
  has_many :RemarkQs
  has_many :RemarkAns
  has_many :VoteQs
  has_many :VoteAns
  has_many :ComplaintQs
  has_many :ComplaintAns
end
