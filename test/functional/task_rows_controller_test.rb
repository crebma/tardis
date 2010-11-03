require 'test_helper'

class TaskRowsControllerTest < ActionController::TestCase
  setup do
    @task_row = task_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_row" do
    assert_difference('TaskRow.count') do
      post :create, :task_row => @task_row.attributes
    end

    assert_redirected_to task_row_path(assigns(:task_row))
  end

  test "should show task_row" do
    get :show, :id => @task_row.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @task_row.to_param
    assert_response :success
  end

  test "should update task_row" do
    put :update, :id => @task_row.to_param, :task_row => @task_row.attributes
    assert_redirected_to task_row_path(assigns(:task_row))
  end

  test "should destroy task_row" do
    assert_difference('TaskRow.count', -1) do
      delete :destroy, :id => @task_row.to_param
    end

    assert_redirected_to task_rows_path
  end
end
