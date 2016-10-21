require 'test_helper'

class RequestProductsControllerTest < ActionController::TestCase
  setup do
    @request_product = request_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_product" do
    assert_difference('RequestProduct.count') do
      post :create, request_product: { actual_price: @request_product.actual_price, delivery_time: @request_product.delivery_time, discount_price: @request_product.discount_price, ebuy_delivery: @request_product.ebuy_delivery, pick_up: @request_product.pick_up, product_category: @request_product.product_category, quantity: @request_product.quantity, specs: @request_product.specs, start_to_sell_on: @request_product.start_to_sell_on, title: @request_product.title }
    end

    assert_redirected_to request_product_path(assigns(:request_product))
  end

  test "should show request_product" do
    get :show, id: @request_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_product
    assert_response :success
  end

  test "should update request_product" do
    patch :update, id: @request_product, request_product: { actual_price: @request_product.actual_price, delivery_time: @request_product.delivery_time, discount_price: @request_product.discount_price, ebuy_delivery: @request_product.ebuy_delivery, pick_up: @request_product.pick_up, product_category: @request_product.product_category, quantity: @request_product.quantity, specs: @request_product.specs, start_to_sell_on: @request_product.start_to_sell_on, title: @request_product.title }
    assert_redirected_to request_product_path(assigns(:request_product))
  end

  test "should destroy request_product" do
    assert_difference('RequestProduct.count', -1) do
      delete :destroy, id: @request_product
    end

    assert_redirected_to request_products_path
  end
end
