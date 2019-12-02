class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end


  def edit
  end

  def create
    flash[:notice] = "Save the world by Giving life to helpless"
    redirect_to @show
    @question = Question.new(question_params)

    
      if @question.save
        redirect_to @question, notice: 'Thank you for asking!!! the doctors will help.'
      else
         render :new 
    end
  end

  def update
      if @question.update(question_params)
         redirect_to @question, notice: 'Question was successfully updated.' 
      else
         render :edit 
    end
  end

 
  def destroy
    @question.destroy
    
      redirect_to questions_url, notice: 'Question was successfully destroyed.' 
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:name, :question, :email, :time)
    end
end
