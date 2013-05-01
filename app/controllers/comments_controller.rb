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
    # render :partial => 'comments/create', :locals => { :comment => @comment }, :content_type => 'text/javascript'

    # respond_to do |format|
    #   format.html do
    #     render @comment
    #   end

    #   format.js do
    #     render :partial => 'comments/create', :locals => { :comment => @comment }, :content_type => 'text/javascript'
    #   end

    #   format.json do
    #     render :json => @comment
    #   end
    # end
  end
end
