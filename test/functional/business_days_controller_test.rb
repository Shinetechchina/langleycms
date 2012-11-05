require 'test_helper'

class BusinessDaysControllerTest < ActionController::TestCase
  setup do
    @business_day = business_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_day" do
    assert_difference('BusinessDay.count') do
      post :create, business_day: @business_day.attributes
    end

    assert_redirected_to business_day_path(assigns(:business_day))
  end

  test "should show business_day" do
    get :show, id: @business_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_day
    assert_response :success
  end

  test "should update business_day" do
    put :update, id: @business_day, business_day: @business_day.attributes
    assert_redirected_to business_day_path(assigns(:business_day))
  end

  test "should destroy business_day" do
    assert_difference('BusinessDay.count', -1) do
      delete :destroy, id: @business_day
    end

    assert_redirected_to business_days_path
  end
end
