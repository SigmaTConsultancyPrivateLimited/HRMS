require "test_helper"

class LeaveReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_report = leave_reports(:one)
  end

  test "should get index" do
    get leave_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_report_url
    assert_response :success
  end

  test "should create leave_report" do
    assert_difference("LeaveReport.count") do
      post leave_reports_url, params: { leave_report: {  } }
    end

    assert_redirected_to leave_report_url(LeaveReport.last)
  end

  test "should show leave_report" do
    get leave_report_url(@leave_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_report_url(@leave_report)
    assert_response :success
  end

  test "should update leave_report" do
    patch leave_report_url(@leave_report), params: { leave_report: {  } }
    assert_redirected_to leave_report_url(@leave_report)
  end

  test "should destroy leave_report" do
    assert_difference("LeaveReport.count", -1) do
      delete leave_report_url(@leave_report)
    end

    assert_redirected_to leave_reports_url
  end
end
