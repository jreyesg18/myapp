class Area < ApplicationRecord

  has_many :concursos

  validates :nombre, length: { in: 1..30 , message: "Debe tener entre 1 y 30 caracteres"}

end
