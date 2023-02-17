require "test_helper"

class JobApplicantProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_applicant_profile = job_applicant_profiles(:one)
  end

  test "should get index" do
    get job_applicant_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_job_applicant_profile_url
    assert_response :success
  end

  test "should create job_applicant_profile" do
    assert_difference("JobApplicantProfile.count") do
      post job_applicant_profiles_url, params: { job_applicant_profile: {  } }
    end

    assert_redirected_to job_applicant_profile_url(JobApplicantProfile.last)
  end

  test "should show job_applicant_profile" do
    get job_applicant_profile_url(@job_applicant_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_applicant_profile_url(@job_applicant_profile)
    assert_response :success
  end

  test "should update job_applicant_profile" do
    patch job_applicant_profile_url(@job_applicant_profile), params: { job_applicant_profile: {  } }
    assert_redirected_to job_applicant_profile_url(@job_applicant_profile)
  end

  test "should destroy job_applicant_profile" do
    assert_difference("JobApplicantProfile.count", -1) do
      delete job_applicant_profile_url(@job_applicant_profile)
    end

    assert_redirected_to job_applicant_profiles_url
  end
end
