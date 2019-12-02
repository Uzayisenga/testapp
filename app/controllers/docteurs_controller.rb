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

  # GET /docteurs/1/edit
  def edit
  end

  # POST /docteurs
  # POST /docteurs.json
  def create
    @docteur = Docteur.new(docteur_params)

    respond_to do |format|
      if @docteur.save
        format.html { redirect_to @docteur, notice: 'Docteur was successfully created.' }
        format.json { render :show, status: :created, location: @docteur }
      else
        format.html { render :new }
        format.json { render json: @docteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docteurs/1
  # PATCH/PUT /docteurs/1.json
  def update
    respond_to do |format|
      if @docteur.update(docteur_params)
        format.html { redirect_to @docteur, notice: 'Docteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @docteur }
      else
        format.html { render :edit }
        format.json { render json: @docteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docteurs/1
  # DELETE /docteurs/1.json
  def destroy
    @docteur.destroy
    respond_to do |format|
      format.html { redirect_to docteurs_url, notice: 'Docteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docteur
      @docteur = Docteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docteur_params
      params.require(:docteur).permit(:names, :field_in, :upload_cv, :upload_diploma,:image, :email, :availability, :telephone)
    end
end
