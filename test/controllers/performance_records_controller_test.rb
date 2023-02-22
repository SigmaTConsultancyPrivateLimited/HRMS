require "test_helper"

class PerformanceRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performance_record = performance_records(:one)
  end

  test "should get index" do
    get performance_records_url
    assert_response :success
  end

  test "should get new" do
    get new_performance_record_url
    assert_response :success
  end

  test "should create performance_record" do
    assert_difference("PerformanceRecord.count") do
      post performance_records_url, params: { performance_record: {  } }
    end

    assert_redirected_to performance_record_url(PerformanceRecord.last)
  end

  test "should show performance_record" do
    get performance_record_url(@performance_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_performance_record_url(@performance_record)
    assert_response :success
  end

  test "should update performance_record" do
    patch performance_record_url(@performance_record), params: { performance_record: {  } }
    assert_redirected_to performance_record_url(@performance_record)
  end

  test "should destroy performance_record" do
    assert_difference("PerformanceRecord.count", -1) do
      delete performance_record_url(@performance_record)
    end

    assert_redirected_to performance_records_url
  end
end
