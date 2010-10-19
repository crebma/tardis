require 'test_helper'

class WeeksControllerTest < ActionController::TestCase
  setup do
    @week = weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week" do
    assert_difference('Week.count') do
      post :create, :week => @week.attributes
    end

    assert_redirected_to week_path(assigns(:week))
  end

  test "should show week" do
    get :show, :id => @week.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @week.to_param
    assert_response :success
  end

  test "should update week" do
    put :update, :id => @week.to_param, :week => @week.attributes
    assert_redirected_to week_path(assigns(:week))
  end

  test "should destroy week" do
    assert_difference('Week.count', -1) do
      delete :destroy, :id => @week.to_param
    end

    assert_redirected_to weeks_path
  end
end
