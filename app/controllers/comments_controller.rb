class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @publisher = Publisher.find(params[:publisher_id])
    @comment = @publisher.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to publisher_path(@publisher), notice: 'Publishing failed...' }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @publisher = Publisher.find(params[:publisher_id])
    @comment = Comment.find(params[:id])
    @comment.destroy!
    params[:id] = @publisher.id
    respond_to do |format|
      format.html {redirect_to publisher_url(id: params[:id])}
      format.js
    end
  end
  private
    def comment_params
      params.require(:comment).permit(:description, :publisher_id, :name)
    end
end

