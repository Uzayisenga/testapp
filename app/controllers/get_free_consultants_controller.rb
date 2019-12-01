class GetFreeConsultantsController < ApplicationController
  before_action :set_get_free_consultant, only: [:show, :edit, :update, :destroy]

  # GET /get_free_consultants
  # GET /get_free_consultants.json
  def index
    @get_free_consultants = GetFreeConsultant.all
  end

  # GET /get_free_consultants/1
  # GET /get_free_consultants/1.json
  def show
  end

  # GET /get_free_consultants/new
  def new
    @get_free_consultant = GetFreeConsultant.new
  end

  # GET /get_free_consultants/1/edit
  def edit
  end

  # POST /get_free_consultants
  # POST /get_free_consultants.json
  def create
    @get_free_consultant = GetFreeConsultant.new(get_free_consultant_params)

    respond_to do |format|
      if @get_free_consultant.save
        format.html { redirect_to @get_free_consultant, notice: 'Get free consultant was successfully created.' }
        format.json { render :show, status: :created, location: @get_free_consultant }
      else
        format.html { render :new }
        format.json { render json: @get_free_consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_free_consultants/1
  # PATCH/PUT /get_free_consultants/1.json
  def update
    respond_to do |format|
      if @get_free_consultant.update(get_free_consultant_params)
        format.html { redirect_to @get_free_consultant, notice: 'Get free consultant was successfully updated.' }
        format.json { render :show, status: :ok, location: @get_free_consultant }
      else
        format.html { render :edit }
        format.json { render json: @get_free_consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_free_consultants/1
  # DELETE /get_free_consultants/1.json
  def destroy
    @get_free_consultant.destroy
    respond_to do |format|
      format.html { redirect_to get_free_consultants_url, notice: 'Get free consultant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_free_consultant
      @get_free_consultant = GetFreeConsultant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def get_free_consultant_params
      params.require(:get_free_consultant).permit(:name, :email, :phone, :address, :dob, :street_name, :district, :sector, :cell, :how_did_you_us, :height, :weight, :gender, :concern, :family_history, :subcribe_article, :time)
    end
end
