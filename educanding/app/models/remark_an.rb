class RemarkAn < ApplicationRecord
  belongs_to :User, optional:true
  belongs_to :Answer, optional:true
end
