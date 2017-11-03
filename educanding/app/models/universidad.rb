class Universidad < ApplicationRecord
  has_many :Usuarios
  has_many :Preguntums
end
