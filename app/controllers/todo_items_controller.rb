class TodoItemsController < ApplicationController
  def index
    gon.todo_items = TodoItem.all
    @todo_items = TodoItem.all
    # render @todo_items

  end

  def destroy
    @todo_item = TodoItem.find(params[:id])
    @todo_item.destroy
    render @todo_item

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
    # binding.pry
  end
end
