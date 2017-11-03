class Respuestum < ApplicationRecord
  belongs_to :Preguntum,
  belongs_to :Usuario,
  has_many :Comentarior,
  has_many :Votor
end
