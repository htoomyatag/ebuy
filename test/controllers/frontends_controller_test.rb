require 'test_helper'

class FrontendsControllerTest < ActionController::TestCase
  setup do
    @frontend = frontends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frontends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frontend" do
    assert_difference('Frontend.count') do
      post :create, frontend: {  }
    end

    assert_redirected_to frontend_path(assigns(:frontend))
  end

  test "should show frontend" do
    get :show, id: @frontend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frontend
    assert_response :success
  end

  test "should update frontend" do
    patch :update, id: @frontend, frontend: {  }
    assert_redirected_to frontend_path(assigns(:frontend))
  end

  test "should destroy frontend" do
    assert_difference('Frontend.count', -1) do
      delete :destroy, id: @frontend
    end

    assert_redirected_to frontends_path
  end
end
