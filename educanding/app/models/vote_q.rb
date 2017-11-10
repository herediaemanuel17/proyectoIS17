class VoteQ < ApplicationRecord
  belongs_to :User
  belongs_to :Question
end
