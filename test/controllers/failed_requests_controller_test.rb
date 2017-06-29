require 'test_helper'

class FailedRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @failed_request = failed_requests(:one)
  end

  test "should get index" do
    get failed_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_failed_request_url
    assert_response :success
  end

  test "should create failed_request" do
    assert_difference('FailedRequest.count') do
      post failed_requests_url, params: { failed_request: { club_name: @failed_request.club_name, end_date: @failed_request.end_date, number_slots: @failed_request.number_slots, start_date: @failed_request.start_date, user_email: @failed_request.user_email, user_id: @failed_request.user_id } }
    end

    assert_redirected_to failed_request_url(FailedRequest.last)
  end

  test "should show failed_request" do
    get failed_request_url(@failed_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_failed_request_url(@failed_request)
    assert_response :success
  end

  test "should update failed_request" do
    patch failed_request_url(@failed_request), params: { failed_request: { club_name: @failed_request.club_name, end_date: @failed_request.end_date, number_slots: @failed_request.number_slots, start_date: @failed_request.start_date, user_email: @failed_request.user_email, user_id: @failed_request.user_id } }
    assert_redirected_to failed_request_url(@failed_request)
  end

  test "should destroy failed_request" do
    assert_difference('FailedRequest.count', -1) do
      delete failed_request_url(@failed_request)
    end

    assert_redirected_to failed_requests_url
  end
end
