require 'test_helper'

class BookingRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_request = booking_requests(:one)
  end

  test "should get index" do
    get booking_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_request_url
    assert_response :success
  end

  test "should create booking_request" do
    assert_difference('BookingRequest.count') do
      post booking_requests_url, params: { booking_request: { user_id: @booking_request.user_id } }
    end

    assert_redirected_to booking_request_url(BookingRequest.last)
  end

  test "should show booking_request" do
    get booking_request_url(@booking_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_request_url(@booking_request)
    assert_response :success
  end

  test "should update booking_request" do
    patch booking_request_url(@booking_request), params: { booking_request: { user_id: @booking_request.user_id } }
    assert_redirected_to booking_request_url(@booking_request)
  end

  test "should destroy booking_request" do
    assert_difference('BookingRequest.count', -1) do
      delete booking_request_url(@booking_request)
    end

    assert_redirected_to booking_requests_url
  end
end
