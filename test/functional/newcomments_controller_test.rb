require 'test_helper'

class NewcommentsControllerTest < ActionController::TestCase
  setup do
    @newcomment = newcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newcomment" do
    assert_difference('Newcomment.count') do
      post :create, :newcomment => @newcomment.attributes
    end

    assert_redirected_to newcomment_path(assigns(:newcomment))
  end

  test "should show newcomment" do
    get :show, :id => @newcomment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @newcomment.to_param
    assert_response :success
  end

  test "should update newcomment" do
    put :update, :id => @newcomment.to_param, :newcomment => @newcomment.attributes
    assert_redirected_to newcomment_path(assigns(:newcomment))
  end

  test "should destroy newcomment" do
    assert_difference('Newcomment.count', -1) do
      delete :destroy, :id => @newcomment.to_param
    end

    assert_redirected_to newcomments_path
  end
end
