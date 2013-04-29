class TodoItemsController < ApplicationController
  def index
    
  end

  def home
    
  end

  def new
    @todo_item = TodoItem.create
  end
end
