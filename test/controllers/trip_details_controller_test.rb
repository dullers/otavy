require 'test_helper'

class TripDetailsControllerTest < ActionController::TestCase
  setup do
    @trip_detail = trip_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_detail" do
    assert_difference('TripDetail.count') do
      post :create, trip_detail: { description: @trip_detail.description, duration: @trip_detail.duration, index: @trip_detail.index, name: @trip_detail.name, trip_id: @trip_detail.trip_id }
    end

    assert_redirected_to trip_detail_path(assigns(:trip_detail))
  end

  test "should show trip_detail" do
    get :show, id: @trip_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_detail
    assert_response :success
  end

  test "should update trip_detail" do
    patch :update, id: @trip_detail, trip_detail: { description: @trip_detail.description, duration: @trip_detail.duration, index: @trip_detail.index, name: @trip_detail.name, trip_id: @trip_detail.trip_id }
    assert_redirected_to trip_detail_path(assigns(:trip_detail))
  end

  test "should destroy trip_detail" do
    assert_difference('TripDetail.count', -1) do
      delete :destroy, id: @trip_detail
    end

    assert_redirected_to trip_details_path
  end
end
