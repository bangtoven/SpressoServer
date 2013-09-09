require 'test_helper'

class CafesControllerTest < ActionController::TestCase
  setup do
    @cafe = cafes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cafe.count') do
      post :create, cafe: { discount: @cafe.discount, location: @cafe.location, name: @cafe.name, open_hour: @cafe.open_hour, open_hour_etc: @cafe.open_hour_etc, open_hour_fri: @cafe.open_hour_fri, open_hour_wknd: @cafe.open_hour_wknd, seat: @cafe.seat, wifi: @cafe.wifi }
    end

    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should show cafe" do
    get :show, id: @cafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafe
    assert_response :success
  end

  test "should update cafe" do
    put :update, id: @cafe, cafe: { discount: @cafe.discount, location: @cafe.location, name: @cafe.name, open_hour: @cafe.open_hour, open_hour_etc: @cafe.open_hour_etc, open_hour_fri: @cafe.open_hour_fri, open_hour_wknd: @cafe.open_hour_wknd, seat: @cafe.seat, wifi: @cafe.wifi }
    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should destroy cafe" do
    assert_difference('Cafe.count', -1) do
      delete :destroy, id: @cafe
    end

    assert_redirected_to cafes_path
  end
end
