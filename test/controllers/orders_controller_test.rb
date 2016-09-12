require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { buyer_address: @order.buyer_address, buyer_email: @order.buyer_email, buyer_id: @order.buyer_id, buyer_name: @order.buyer_name, buyer_phone: @order.buyer_phone, buyer_township: @order.buyer_township, cart_id: @order.cart_id, order_status: @order.order_status }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { buyer_address: @order.buyer_address, buyer_email: @order.buyer_email, buyer_id: @order.buyer_id, buyer_name: @order.buyer_name, buyer_phone: @order.buyer_phone, buyer_township: @order.buyer_township, cart_id: @order.cart_id, order_status: @order.order_status }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
