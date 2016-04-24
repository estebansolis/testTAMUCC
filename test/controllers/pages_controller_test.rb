require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get appointments" do
    get :appointments
    assert_response :success
  end

  test "should get available" do
    get :available
    assert_response :success
  end

  test "should get checkedout" do
    get :checkedout
    assert_response :success
  end

  test "should get checkin" do
    get :checkin
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

  test "should get late" do
    get :late
    assert_response :success
  end

  test "should get manage" do
    get :manage
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end
