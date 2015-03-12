require 'test_helper'

class UserTasksControllerTest < ActionController::TestCase
  setup do
    @user_task = user_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_task" do
    assert_difference('UserTask.count') do
      post :create, user_task: { info: @user_task.info, result: @user_task.result, status: @user_task.status, string: @user_task.string, string: @user_task.string, task_name: @user_task.task_name, text: @user_task.text, text: @user_task.text }
    end

    assert_redirected_to user_task_path(assigns(:user_task))
  end

  test "should show user_task" do
    get :show, id: @user_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_task
    assert_response :success
  end

  test "should update user_task" do
    patch :update, id: @user_task, user_task: { info: @user_task.info, result: @user_task.result, status: @user_task.status, string: @user_task.string, string: @user_task.string, task_name: @user_task.task_name, text: @user_task.text, text: @user_task.text }
    assert_redirected_to user_task_path(assigns(:user_task))
  end

  test "should destroy user_task" do
    assert_difference('UserTask.count', -1) do
      delete :destroy, id: @user_task
    end

    assert_redirected_to user_tasks_path
  end
end
