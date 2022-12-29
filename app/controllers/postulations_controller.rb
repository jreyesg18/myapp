class PostulationsController < ApplicationController

  before_action :find_concurso
  before_action :find_postulation, only: [:edit, :update, :destroy, :show,]

  def new
    @postulation = Postulation.new
  end

  def create
    @postulation = Postulation.new(postulation_params)
    @postulation.concurso_id = @concurso.id
    @postulation.user_id = current_user.id
    @postulation.document = params[:postulation][:document]


    if @postulation.save
      redirect_to concurso_path(@concurso)
    else
      render'new'
    end
  end

  def edit

  end

  def destroy
    @postulation.destroy
    redirect_to concurso_params(@concurso)
  end



  def update

    if @postulation.update(postulation_params)
      redirect_to concurso_path
    else
      render 'edit'
    end

  end


  private

  def postulation_params
    params.require(:postulation).permit(:eleccion, :pr1, :pr2, :pr3, :pr4, :pr5, :pr6, :pr7, :pr8, :pr9, :pr10, :pr11, :pr12, :pr13, :pr14, :pr15, :pr16, :pr17, :document)
  end

  def find_concurso
    @concurso = Concurso.find(params[:concurso_id])
  end

  def find_postulation
    @postulation = Postulation.find(params[:id])
  end


end
