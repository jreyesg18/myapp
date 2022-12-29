class ConcursosController < ApplicationController
  before_action :find_concurso, only: [:show, :edit, :update, :destroy]

  def index
    if params[:area].blank?
      @concursos = Concurso.all.order("created_at DESC")
    else
      @area_id = Area.find_by(nombre: params[:area]).id
      @concursos = Concurso.where(:area_id => @area_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    #@concurso = Concurso.new
    @concurso = current_user.concursos.build
    @areas = Area.all.map{|c| [c.nombre, c.id]}
  end

  def create
    @areas = Area.all.map{|c| [c.nombre, c.id]}
    #@concurso = Concurso.new(concurso_params)
    @concurso = current_user.concursos.build(concurso_params)
    @concurso.area_id = params[:area_id]

    if @concurso.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @concurso = current_user.concursos.build
  end

  def update
    @concurso.area_id = params[:area_id]

    if @concurso.update(concurso_params)
      redirect_to concurso_path(@concurso)
    else
      render 'edit'
    end
  end

  def destroy
    @concurso.destroy
    redirect_to root_path
  end


  private
  def concurso_params
    params.require(:concurso).permit(:cargo, :vacante, :finicio, :ftermino, :descripcion, :contrato, :jornada, :requisito, :eminima, :estudio, :dcomputacional)
  end
  def find_concurso
    @concurso = Concurso.find(params[:id])
  end




end
