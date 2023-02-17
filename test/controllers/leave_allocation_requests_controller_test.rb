require "test_helper"

class LeaveAllocationRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_allocation_request = leave_allocation_requests(:one)
  end

  test "should get index" do
    get leave_allocation_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_allocation_request_url
    assert_response :success
  end

  test "should create leave_allocation_request" do
    assert_difference("LeaveAllocationRequest.count") do
      post leave_allocation_requests_url, params: { leave_allocation_request: {  } }
    end

    assert_redirected_to leave_allocation_request_url(LeaveAllocationRequest.last)
  end

  test "should show leave_allocation_request" do
    get leave_allocation_request_url(@leave_allocation_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_allocation_request_url(@leave_allocation_request)
    assert_response :success
  end

  test "should update leave_allocation_request" do
    patch leave_allocation_request_url(@leave_allocation_request), params: { leave_allocation_request: {  } }
    assert_redirected_to leave_allocation_request_url(@leave_allocation_request)
  end

  test "should destroy leave_allocation_request" do
    assert_difference("LeaveAllocationRequest.count", -1) do
      delete leave_allocation_request_url(@leave_allocation_request)
    end

    assert_redirected_to leave_allocation_requests_url
  end
end
