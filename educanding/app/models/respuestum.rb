class Respuestum < ApplicationRecord
  belong_to :Preguntum,
  belong_to :Usuario,
  has_many :Comentarior,
  has_many :Votor
end
