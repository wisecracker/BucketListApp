class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def destroy
  end

  def show
    @comment = Comment.find(params[:id])

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save!
    render @comment
  end
end
