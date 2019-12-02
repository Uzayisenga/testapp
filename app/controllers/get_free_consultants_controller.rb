class GetFreeConsultantsController < ApplicationController
  before_action :set_get_free_consultant, only: [:show, :edit, :update, :destroy]

 
  def index
    @get_free_consultants = GetFreeConsultant.all
  end

  def show
  end

  def new
    @get_free_consultant = GetFreeConsultant.new
  end


  def edit
  end

  def create
    @get_free_consultant = GetFreeConsultant.new(get_free_consultant_params)
      if @get_free_consultant.save
        redirect_to @get_free_consultant, notice: 'Get free consultant was successfully created.' 
      else
        render :new 
      end
  end


  def update
      if @get_free_consultant.update(get_free_consultant_params)
        redirect_to @get_free_consultant, notice: 'Get free consultant was successfully updated.' 
      else
        render :edit 
    end
  end

  def destroy
    @get_free_consultant.destroy
       redirect_to get_free_consultants_url, notice: 'Get free consultant was successfully destroyed.' 
  end

  private
    def set_get_free_consultant
      @get_free_consultant = GetFreeConsultant.find(params[:id])
    end
    
    def get_free_consultant_params
      params.require(:get_free_consultant).permit(:name, :email, :phone, :address, :dob, :street_name, :district, :sector, :cell, :how_did_you_us, :height, :weight, :gender, :concern, :family_history, :subcribe_article, :time)
    end
end
