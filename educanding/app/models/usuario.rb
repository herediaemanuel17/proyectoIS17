class Usuario < ApplicationRecord
  has_many :Preguntum,
  belong_to :Universidad,
  has_many :Respuestum
end
