class Usuario < ApplicationRecord
  has_many :Pregunta,
  belong_to :Universidad,
  has_many :Respuestas
end
