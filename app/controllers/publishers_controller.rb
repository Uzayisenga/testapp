class PublishersController < ApplicationController
  before_action :authenticate_user!, :except => [:show]
  before_action :set_publisher, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :exception

  def index
    @publishers = Publisher.all
  end

  def show
    @comments = Comment.where(publisher_id: @publisher)
  end
  
  def new
    @publisher = Publisher.new
  end

  def edit
  end

  
  def create
    @publisher = Publisher.new(publisher_params)

      if @publisher.save
         redirect_to @publisher, notice: 'Publisher was successfully created.' 
      else
         render :new 
    end
  end

  def update
      if @publisher.update(publisher_params)
         redirect_to @publisher, notice: 'Publisher was successfully updated.' 
      else
         render :edit 
    end
  end

  def destroy
    @publisher.destroy
       redirect_to publishers_url, notice: 'Publisher was successfully destroyed.' 
  end

  private
    def set_publisher
      @publisher = Publisher.find(params[:id])
    end

    def publisher_params
      params.require(:publisher).permit(:name, :publish, :email, :time)
    end
end
