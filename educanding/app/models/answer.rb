class Answer < ApplicationRecord
  belongs_to :Question, optional:true
end
