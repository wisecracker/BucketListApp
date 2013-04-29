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
    end

    context "give me a HTTP 200" do
      # assert_response :success
    end

    context "should give me 3 Todo Items" do
      assert_equal 3, assigns(:items).length
      # assert_equal TodoItem, assigns(:items).first.class
    end

    context "GET to show" do
      setup do
        get :index, :id => 1
      end
    end
  end
end
