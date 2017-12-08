class Label < ApplicationRecord
  has_many :Labelquestions
  has_many :Questions, through: :Labelquestions
end
