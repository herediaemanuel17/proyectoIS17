class Preguntum < ApplicationRecord
  belong_to :Universidad
  belong_to :Usuario
  has_many :Respuesta
  has_many :Comentariop
  has_many :Votop
  has_many :etiqueta

end
