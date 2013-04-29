class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all

  end

  def show
    @todo_item = TodoItem.find(params[:id])
  end

  def new
    @todo_item = TodoItem.new
    # binding.pry
  end

  def create
    @todo_item = TodoItem.new(params[:todo_item])
    @todo_item.save!
    # redirect_to @todo_item
    render @todo_item
  end
end
