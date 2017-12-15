class RemarkAn < ApplicationRecord
  belongs_to :User, optional:true, foreign_key: "User_id"
  belongs_to :Answer, optional:true, foreign_key: "Answer_id"
  has_many :ComplaintRans, dependent: :destroy
end
