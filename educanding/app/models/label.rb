class Label < ApplicationRecord
  #has_many :Labelquestions
  #has_many :Questions, through: :Labelquestions
  has_and_belongs_to_many :Questions, foreign_key: "Label_id"
end
