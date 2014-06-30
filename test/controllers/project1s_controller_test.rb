require 'test_helper'

class Project1sControllerTest < ActionController::TestCase
  setup do
    @project1 = project1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project1" do
    assert_difference('Project1.count') do
      post :create, project1: { billing_type: @project1.billing_type, code: @project1.code, deadline_date: @project1.deadline_date, description: @project1.description, end_date: @project1.end_date, github_url: @project1.github_url, name: @project1.name, start_date: @project1.start_date, status: @project1.status }
    end

    assert_redirected_to project1_path(assigns(:project1))
  end

  test "should show project1" do
    get :show, id: @project1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project1
    assert_response :success
  end

  test "should update project1" do
    patch :update, id: @project1, project1: { billing_type: @project1.billing_type, code: @project1.code, deadline_date: @project1.deadline_date, description: @project1.description, end_date: @project1.end_date, github_url: @project1.github_url, name: @project1.name, start_date: @project1.start_date, status: @project1.status }
    assert_redirected_to project1_path(assigns(:project1))
  end

  test "should destroy project1" do
    assert_difference('Project1.count', -1) do
      delete :destroy, id: @project1
    end

    assert_redirected_to project1s_path
  end
end
