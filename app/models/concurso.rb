class Concurso < ApplicationRecord

  belongs_to :user
  belongs_to :area
  has_many :postulations
  before_save :asignandohorainicial

  validates :cargo, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :descripcion, length: {in: 3...10000, message: "Debe tener entre 3 caracteres y 10000"}
  validates :contrato, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :jornada, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :requisito, length: {in: 3...10000, message: "Debe tener entre 3 caracteres y 10000"}
  validates :estudio,  presence: true
  validates :vacante, presence: true
  validates :eminima, presence: true
  validates :dcomputacional, presence: true
  validates :ftermino, presence: true


  def asignandohorainicial
    self.finicio = Time.zone.now.strftime("%Y-%m-%d")
  end




end
