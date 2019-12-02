class CommentsController < ApplicationController
  before_action :find_publisher
 before_action :find_comment, only: [:destroy, :edit , :update]
def create
@comment = @publisher.comments.create(params[:comment].permit(:description))
@comment.save
if @comment.save
  redirect_to publisher_path(@publisher), notice: "Thank you for commomenting on this article"
else
  render 'new'
end
end
def destroy
@comment.destroy
redirect_to publisher_path(@publisher)
end
def edit
end
def update
  if @comment.update(params[:comment].permit(:description))
    redirect_to publisher_path(@publisher)
    else
      render 'edit'
    end
  end
  private
def find_publisher
  @publisher= Publisher.find(params[:publisher_id])
end
def find_comment
  @comment = @publisher.comments.find(params[:id])
end
end

