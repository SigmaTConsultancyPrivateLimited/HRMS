require "application_system_test_case"

class LeaveReportsTest < ApplicationSystemTestCase
  setup do
    @leave_report = leave_reports(:one)
  end

  test "visiting the index" do
    visit leave_reports_url
    assert_selector "h1", text: "Leave reports"
  end

  test "should create leave report" do
    visit leave_reports_url
    click_on "New leave report"

    click_on "Create Leave report"

    assert_text "Leave report was successfully created"
    click_on "Back"
  end

  test "should update Leave report" do
    visit leave_report_url(@leave_report)
    click_on "Edit this leave report", match: :first

    click_on "Update Leave report"

    assert_text "Leave report was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave report" do
    visit leave_report_url(@leave_report)
    click_on "Destroy this leave report", match: :first

    assert_text "Leave report was successfully destroyed"
  end
end
