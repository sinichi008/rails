require 'test_helper'

class EklabusControllerTest < ActionController::TestCase
  setup do
    @eklabus = eklabus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eklabus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eklabus" do
    assert_difference('Eklabu.count') do
      post :create, eklabus: { address: @eklabus.address, name: @eklabus.name }
    end

    assert_redirected_to eklabus_path(assigns(:eklabus))
  end

  test "should show eklabus" do
    get :show, id: @eklabus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eklabus
    assert_response :success
  end

  test "should update eklabus" do
    patch :update, id: @eklabus, eklabus: { address: @eklabus.address, name: @eklabus.name }
    assert_redirected_to eklabus_path(assigns(:eklabus))
  end

  test "should destroy eklabus" do
    assert_difference('Eklabu.count', -1) do
      delete :destroy, id: @eklabus
    end

    assert_redirected_to eklabus_path
  end
end
