require 'test_helper'

class RealtimesControllerTest < ActionController::TestCase
  setup do
    @realtime = realtimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtime" do
    assert_difference('Realtime.count') do
      post :create, realtime: {  }
    end

    assert_redirected_to realtime_path(assigns(:realtime))
  end

  test "should show realtime" do
    get :show, id: @realtime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtime
    assert_response :success
  end

  test "should update realtime" do
    patch :update, id: @realtime, realtime: {  }
    assert_redirected_to realtime_path(assigns(:realtime))
  end

  test "should destroy realtime" do
    assert_difference('Realtime.count', -1) do
      delete :destroy, id: @realtime
    end

    assert_redirected_to realtimes_path
  end
end
