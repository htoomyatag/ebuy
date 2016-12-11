require 'test_helper'

class MyapisControllerTest < ActionController::TestCase
  setup do
    @myapi = myapis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myapis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myapi" do
    assert_difference('Myapi.count') do
      post :create, myapi: {  }
    end

    assert_redirected_to myapi_path(assigns(:myapi))
  end

  test "should show myapi" do
    get :show, id: @myapi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myapi
    assert_response :success
  end

  test "should update myapi" do
    patch :update, id: @myapi, myapi: {  }
    assert_redirected_to myapi_path(assigns(:myapi))
  end

  test "should destroy myapi" do
    assert_difference('Myapi.count', -1) do
      delete :destroy, id: @myapi
    end

    assert_redirected_to myapis_path
  end
end
