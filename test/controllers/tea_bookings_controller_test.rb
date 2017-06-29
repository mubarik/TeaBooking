require 'test_helper'

class TeaBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tea_booking = tea_bookings(:one)
  end

  test "should get index" do
    get tea_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_tea_booking_url
    assert_response :success
  end

  test "should create tea_booking" do
    assert_difference('TeaBooking.count') do
      post tea_bookings_url, params: { tea_booking: { club_name: @tea_booking.club_name, end_date: @tea_booking.end_date, number_time_slots: @tea_booking.number_time_slots, start_date: @tea_booking.start_date, user_email: @tea_booking.user_email } }
    end

    assert_redirected_to tea_booking_url(TeaBooking.last)
  end

  test "should show tea_booking" do
    get tea_booking_url(@tea_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_tea_booking_url(@tea_booking)
    assert_response :success
  end

  test "should update tea_booking" do
    patch tea_booking_url(@tea_booking), params: { tea_booking: { club_name: @tea_booking.club_name, end_date: @tea_booking.end_date, number_time_slots: @tea_booking.number_time_slots, start_date: @tea_booking.start_date, user_email: @tea_booking.user_email } }
    assert_redirected_to tea_booking_url(@tea_booking)
  end

  test "should destroy tea_booking" do
    assert_difference('TeaBooking.count', -1) do
      delete tea_booking_url(@tea_booking)
    end

    assert_redirected_to tea_bookings_url
  end
end
