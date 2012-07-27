require 'test_helper'

class MytrackersControllerTest < ActionController::TestCase
  setup do
    @mytracker = mytrackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytrackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytracker" do
    assert_difference('Mytracker.count') do
      post :create, mytracker: {  }
    end

    assert_redirected_to mytracker_path(assigns(:mytracker))
  end

  test "should show mytracker" do
    get :show, id: @mytracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytracker
    assert_response :success
  end

  test "should update mytracker" do
    put :update, id: @mytracker, mytracker: {  }
    assert_redirected_to mytracker_path(assigns(:mytracker))
  end

  test "should destroy mytracker" do
    assert_difference('Mytracker.count', -1) do
      delete :destroy, id: @mytracker
    end

    assert_redirected_to mytrackers_path
  end
end
