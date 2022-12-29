class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #
  before_save :adminis

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :concursos
  has_many :postulations

  validates_format_of :rut , :with => /\A(([0-9]{8})-[a-zA-Z0-9]{1}$)\Z/ , :message => "El formato debe ser 11111111-1"
  validates :rut, presence: true, rut: true
  validates_uniqueness_of :rut
  validates :email, format: { with: /@banco\.cl\z/i }
  validates :nombre, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :apellidop, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :apellidom, length: {in: 3...1000, message: "Debe tener entre 3 caracteres y 100"}
  validates :cargo, presence: true

  def email_com
    "#{email}"
  end

  private
  def adminis
    if email== "admin@banco.cl"
      self[:admin] = true
    end

    if email== "admin1@banco.cl"
      self[:admin] = true
    end

    if email== "admin2@banco.cl"
      self[:admin] = true
    end

    if email== "jreyesg@banco.cl"
      self[:admin] = true
    end

  end


end
