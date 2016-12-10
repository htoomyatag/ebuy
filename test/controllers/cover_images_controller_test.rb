require 'test_helper'

class CoverImagesControllerTest < ActionController::TestCase
  setup do
    @cover_image = cover_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cover_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cover_image" do
    assert_difference('CoverImage.count') do
      post :create, cover_image: {  }
    end

    assert_redirected_to cover_image_path(assigns(:cover_image))
  end

  test "should show cover_image" do
    get :show, id: @cover_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cover_image
    assert_response :success
  end

  test "should update cover_image" do
    patch :update, id: @cover_image, cover_image: {  }
    assert_redirected_to cover_image_path(assigns(:cover_image))
  end

  test "should destroy cover_image" do
    assert_difference('CoverImage.count', -1) do
      delete :destroy, id: @cover_image
    end

    assert_redirected_to cover_images_path
  end
end
