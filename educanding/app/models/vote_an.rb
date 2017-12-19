class VoteAn < ApplicationRecord
  belongs_to :User
  belongs_to :Answer,foreign_key: "Answer_id"
end
