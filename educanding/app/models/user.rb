class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        belongs_to :Univercity,optional:true
        belongs_to :Permit,optional:true
        has_many :Questions, foreign_key: "User_id"
        has_many :Answers, foreign_key: "User_id"
        has_many :RemarkQs, foreign_key: "User_id"
        has_many :RemarkAns, foreign_key: "User_id"
        has_many :VoteQs
        has_many :VoteAns
        has_many :ComplaintQs
        has_many :ComplaintAns
end
