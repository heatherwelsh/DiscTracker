require 'test_helper'

class DiscColorsControllerTest < ActionController::TestCase
  setup do
    @disc_color = disc_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disc_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disc_color" do
    assert_difference('DiscColor.count') do
      post :create, disc_color: {  }
    end

    assert_redirected_to disc_color_path(assigns(:disc_color))
  end

  test "should show disc_color" do
    get :show, id: @disc_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disc_color
    assert_response :success
  end

  test "should update disc_color" do
    put :update, id: @disc_color, disc_color: {  }
    assert_redirected_to disc_color_path(assigns(:disc_color))
  end

  test "should destroy disc_color" do
    assert_difference('DiscColor.count', -1) do
      delete :destroy, id: @disc_color
    end

    assert_redirected_to disc_colors_path
  end
end
