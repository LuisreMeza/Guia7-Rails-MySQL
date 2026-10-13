class Estudiante < ApplicationRecord
  validates :nombres, presence: true, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+\z/, message: "solo letras" }
  validates :apellidos, presence: true, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]+\z/, message: "solo letras" }
  validates :carrera, presence: true
  validates :carnet, presence: true, uniqueness: true, length: { is: 7, message: "debe tener 7 dígitos" }
end