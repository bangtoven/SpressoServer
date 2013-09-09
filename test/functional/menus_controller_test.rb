require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  setup do
    @cafe = cafes(:one)
    @menu = menus(:one)
  end

  test "should get index" do
    get :index, :cafe_id => @cafe
    assert_response :success
    assert_not_nil assigns(:menus)
  end

  test "should get new" do
    get :new, :cafe_id => @cafe
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post :create, :cafe_id => @cafe, :menu => @menu.attributes
    end

    assert_redirected_to cafe_menu_path(@cafe, assigns(:menu))
  end

  test "should show menu" do
    get :show, :cafe_id => @cafe, :id => @menu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :cafe_id => @cafe, :id => @menu.to_param
    assert_response :success
  end

  test "should update menu" do
    put :update, :cafe_id => @cafe, :id => @menu.to_param, :menu => @menu.attributes
    assert_redirected_to cafe_menu_path(@cafe, assigns(:menu))
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete :destroy, :cafe_id => @cafe, :id => @menu.to_param
    end

    assert_redirected_to cafe_menus_path(@cafe)
  end
end
