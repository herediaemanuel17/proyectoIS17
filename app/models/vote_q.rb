class VoteQ < ApplicationRecord
  belongs_to :User
  belongs_to :Question,foreign_key: "Question_id"
end
