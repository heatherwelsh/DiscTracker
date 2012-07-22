require 'test_helper'

class DisctrackersControllerTest < ActionController::TestCase
  setup do
    @disctracker = disctrackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disctrackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disctracker" do
    assert_difference('Disctracker.count') do
      post :create, disctracker: {  }
    end

    assert_redirected_to disctracker_path(assigns(:disctracker))
  end

  test "should show disctracker" do
    get :show, id: @disctracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disctracker
    assert_response :success
  end

  test "should update disctracker" do
    put :update, id: @disctracker, disctracker: {  }
    assert_redirected_to disctracker_path(assigns(:disctracker))
  end

  test "should destroy disctracker" do
    assert_difference('Disctracker.count', -1) do
      delete :destroy, id: @disctracker
    end

    assert_redirected_to disctrackers_path
  end
end
