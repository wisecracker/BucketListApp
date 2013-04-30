require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  context "A comment" do 
    context "POST to /comments" do
      setup do 
        @todo_item = TodoItem.create
        post :create, :comment => { :body => "Blah", :todo_item_id => @todo_item.id }
      end

      should "have one comment" do
        assert_equal 1, Comment.count
      end

      should "have an associated todo item" do
        assert_equal assigns(:comment).todo_item, @todo_item
      end

      should "give a HTTP 200" do
        assert_response :success
      end
    end

    context "The Comments Controller" do
      context "A normal HTTP Post to the HTML method" do
        setup do
          post :create, :comment => { :body => "blah"}
        end

        should "respond with HTML" do
          assert_redirected_to comment_path(Comments.find(1))
        end
      end

      context "A AJAX request to create" do
        setup do
          # simulate AJAX request
          xhr :post, :create, :comment => { :body => "blah"}
        end

        should "respond with JS" do
          assesrt_response :success
          assert_equal response.content_type, "text//javascript"
        end

        should "" do
          
        end
      end
    end
  end


end
