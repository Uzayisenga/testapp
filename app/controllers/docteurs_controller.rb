class DocteursController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_docteur, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :exception

  # GET /docteurs
  # GET /docteurs.json
  def index
    @docteurs = Docteur.all
  end

  # GET /docteurs/1
  # GET /docteurs/1.json
  def show
  end

  # GET /docteurs/new
  def new
    @docteur = Docteur.new
  end

  
  def edit
  end

 
  def create
    @docteur = Docteur.new(docteur_params)
      if @docteur.save
        redirect_to @docteur, notice: 'Docteur was successfully created.'
      else
        render :new 
    end
  end


  def update
    if @docteur.update(docteur_params)
      redirect_to @docteur, notice: 'Docteur was successfully updated.' 
    else
      render :edit 
    end    
  end

  def destroy
    @docteur.destroy  
      redirect_to docteurs_url, notice: 'Docteur was successfully destroyed.' 
  end

  private
    def set_docteur
      @docteur = Docteur.find(params[:id])
    end

    def docteur_params
      params.require(:docteur).permit(:names, :field_in, :upload_cv, :upload_diploma,:image, :email, :availability, :telephone)
    end
end
