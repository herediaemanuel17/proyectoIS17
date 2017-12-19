class ComplaintRan < ApplicationRecord
  belongs_to :RemarkAn, foreign_key: "remarkan_id"
end
