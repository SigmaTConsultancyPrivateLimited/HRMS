require "application_system_test_case"

class PerformanceRecordsTest < ApplicationSystemTestCase
  setup do
    @performance_record = performance_records(:one)
  end

  test "visiting the index" do
    visit performance_records_url
    assert_selector "h1", text: "Performance records"
  end

  test "should create performance record" do
    visit performance_records_url
    click_on "New performance record"

    click_on "Create Performance record"

    assert_text "Performance record was successfully created"
    click_on "Back"
  end

  test "should update Performance record" do
    visit performance_record_url(@performance_record)
    click_on "Edit this performance record", match: :first

    click_on "Update Performance record"

    assert_text "Performance record was successfully updated"
    click_on "Back"
  end

  test "should destroy Performance record" do
    visit performance_record_url(@performance_record)
    click_on "Destroy this performance record", match: :first

    assert_text "Performance record was successfully destroyed"
  end
end
