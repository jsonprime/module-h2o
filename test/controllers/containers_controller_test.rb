require 'test_helper'

class ContainersControllerTest < ActionController::TestCase
  setup do
    @container = containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create container" do
    assert_difference('Container.count') do
      post :create, container: { description: @container.description, empty: @container.empty, expiration_date: @container.expiration_date, last_refill_date: @container.last_refill_date, refillable: @container.refillable, volume_ml: @container.volume_ml }
    end

    assert_redirected_to container_path(assigns(:container))
  end

  test "should show container" do
    get :show, id: @container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @container
    assert_response :success
  end

  test "should update container" do
    patch :update, id: @container, container: { description: @container.description, empty: @container.empty, expiration_date: @container.expiration_date, last_refill_date: @container.last_refill_date, refillable: @container.refillable, volume_ml: @container.volume_ml }
    assert_redirected_to container_path(assigns(:container))
  end

  test "should destroy container" do
    assert_difference('Container.count', -1) do
      delete :destroy, id: @container
    end

    assert_redirected_to containers_path
  end
end
