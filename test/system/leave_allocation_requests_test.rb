require "application_system_test_case"

class LeaveAllocationRequestsTest < ApplicationSystemTestCase
  setup do
    @leave_allocation_request = leave_allocation_requests(:one)
  end

  test "visiting the index" do
    visit leave_allocation_requests_url
    assert_selector "h1", text: "Leave allocation requests"
  end

  test "should create leave allocation request" do
    visit leave_allocation_requests_url
    click_on "New leave allocation request"

    click_on "Create Leave allocation request"

    assert_text "Leave allocation request was successfully created"
    click_on "Back"
  end

  test "should update Leave allocation request" do
    visit leave_allocation_request_url(@leave_allocation_request)
    click_on "Edit this leave allocation request", match: :first

    click_on "Update Leave allocation request"

    assert_text "Leave allocation request was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave allocation request" do
    visit leave_allocation_request_url(@leave_allocation_request)
    click_on "Destroy this leave allocation request", match: :first

    assert_text "Leave allocation request was successfully destroyed"
  end
end
