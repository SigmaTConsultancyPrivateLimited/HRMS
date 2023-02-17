require "test_helper"

class JobContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_contract = job_contracts(:one)
  end

  test "should get index" do
    get job_contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_job_contract_url
    assert_response :success
  end

  test "should create job_contract" do
    assert_difference("JobContract.count") do
      post job_contracts_url, params: { job_contract: {  } }
    end

    assert_redirected_to job_contract_url(JobContract.last)
  end

  test "should show job_contract" do
    get job_contract_url(@job_contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_contract_url(@job_contract)
    assert_response :success
  end

  test "should update job_contract" do
    patch job_contract_url(@job_contract), params: { job_contract: {  } }
    assert_redirected_to job_contract_url(@job_contract)
  end

  test "should destroy job_contract" do
    assert_difference("JobContract.count", -1) do
      delete job_contract_url(@job_contract)
    end

    assert_redirected_to job_contracts_url
  end
end
