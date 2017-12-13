class Label < ApplicationRecord
  #has_many :Labelquestions
  #has_many :Questions, through: :Labelquestions
  has_and_belongs_to_many :Questions 
end
