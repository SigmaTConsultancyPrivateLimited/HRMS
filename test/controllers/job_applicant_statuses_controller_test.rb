require "test_helper"

class JobApplicantStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_applicant_status = job_applicant_statuses(:one)
  end

  test "should get index" do
    get job_applicant_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_job_applicant_status_url
    assert_response :success
  end

  test "should create job_applicant_status" do
    assert_difference("JobApplicantStatus.count") do
      post job_applicant_statuses_url, params: { job_applicant_status: {  } }
    end

    assert_redirected_to job_applicant_status_url(JobApplicantStatus.last)
  end

  test "should show job_applicant_status" do
    get job_applicant_status_url(@job_applicant_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_applicant_status_url(@job_applicant_status)
    assert_response :success
  end

  test "should update job_applicant_status" do
    patch job_applicant_status_url(@job_applicant_status), params: { job_applicant_status: {  } }
    assert_redirected_to job_applicant_status_url(@job_applicant_status)
  end

  test "should destroy job_applicant_status" do
    assert_difference("JobApplicantStatus.count", -1) do
      delete job_applicant_status_url(@job_applicant_status)
    end

    assert_redirected_to job_applicant_statuses_url
  end
end
