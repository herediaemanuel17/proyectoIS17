class Universidad < ApplicationRecord
  has_many :Usuario,
  has_many :Preguntum
end
