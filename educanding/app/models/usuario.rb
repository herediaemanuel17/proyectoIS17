class Usuario < ApplicationRecord
  ##validates :nombre,presence:true,uniqueness:true
  ##validates :email,presence:true,uniqueness:true
  ##validates :contraseña,presence:true
  ##validates :apellido,presence:true
  has_many :Preguntum
  belongs_to :Universidad
  has_many :Respuestum
end
