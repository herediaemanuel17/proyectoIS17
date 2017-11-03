class Preguntum < ApplicationRecord
  belongs_to :Universidad  
  belongs_to :Usuario
  has_many :Respuestum
  has_many :Comentariop
  has_many :Votop
  has_many :Etiquetum

end
