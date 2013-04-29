require 'test_helper'

class TodoItemsControllerTest < ActionController::TestCase
  context "The TodoItems Controller" do
    setup do
        3.times { TodoItem.create}
    end

    context "GET to index" do
      setup do
        get :index
      end  
    

      should "give me a HTTP 200" do
        assert_response :success
      end

      should "should give me 3 Todo Items" do
        assert_equal 3, assigns(:todo_items).length
        assert_equal TodoItem, assigns(:todo_items).first.class
      end
    end

    context "GET to show" do
      setup do
        get :index, :id => 1
      end

      should "give me a HTTP 200" do
        assert_response :success
      end

      should "give me 1 Todo item" do
        assert_equal TodoItem.find(1), assigns(:todo_items).first
      end
    end
  end
end


# ruby -Ilib:test test/functional/todo_items_controller.rb