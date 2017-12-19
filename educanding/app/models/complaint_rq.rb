class ComplaintRq < ApplicationRecord
  belongs_to :RemarkQ, foreign_key: "remarkq_id"
end
