require 'test_helper'

class BubblesControllerTest < ActionController::TestCase
  setup do
    @bubble = bubbles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bubbles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bubble" do
    assert_difference('Bubble.count') do
      post :create, bubble: { bubble_name: @bubble.bubble_name, link: @bubble.link, thought: @bubble.thought }
    end

    assert_redirected_to bubble_path(assigns(:bubble))
  end

  test "should show bubble" do
    get :show, id: @bubble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bubble
    assert_response :success
  end

  test "should update bubble" do
    put :update, id: @bubble, bubble: { bubble_name: @bubble.bubble_name, link: @bubble.link, thought: @bubble.thought }
    assert_redirected_to bubble_path(assigns(:bubble))
  end

  test "should destroy bubble" do
    assert_difference('Bubble.count', -1) do
      delete :destroy, id: @bubble
    end

    assert_redirected_to bubbles_path
  end
end
