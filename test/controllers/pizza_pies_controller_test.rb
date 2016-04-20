require 'test_helper'

class PizzaPiesControllerTest < ActionController::TestCase
  setup do
    @pizza_py = pizza_pies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizza_pies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza_py" do
    assert_difference('PizzaPy.count') do
      post :create, pizza_py: {  }
    end

    assert_redirected_to pizza_py_path(assigns(:pizza_py))
  end

  test "should show pizza_py" do
    get :show, id: @pizza_py
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza_py
    assert_response :success
  end

  test "should update pizza_py" do
    patch :update, id: @pizza_py, pizza_py: {  }
    assert_redirected_to pizza_py_path(assigns(:pizza_py))
  end

  test "should destroy pizza_py" do
    assert_difference('PizzaPy.count', -1) do
      delete :destroy, id: @pizza_py
    end

    assert_redirected_to pizza_pies_path
  end
end
