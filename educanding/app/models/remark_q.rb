class RemarkQ < ApplicationRecord
  belongs_to :User, optional:true
  belongs_to :Question, optional:true
end
