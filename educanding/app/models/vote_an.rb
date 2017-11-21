class VoteAn < ApplicationRecord
  belongs_to :User
  belongs_to :Answer
end
