class Preguntum < ApplicationRecord
  belong_to :Universidad,
  belong_to :Usuario,
  has_many :Respuestum,
  has_many :Comentariop,
  has_many :Votop,
  has_many :Etiquetum

end
