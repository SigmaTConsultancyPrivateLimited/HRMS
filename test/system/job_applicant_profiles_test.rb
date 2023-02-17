require "application_system_test_case"

class JobApplicantProfilesTest < ApplicationSystemTestCase
  setup do
    @job_applicant_profile = job_applicant_profiles(:one)
  end

  test "visiting the index" do
    visit job_applicant_profiles_url
    assert_selector "h1", text: "Job applicant profiles"
  end

  test "should create job applicant profile" do
    visit job_applicant_profiles_url
    click_on "New job applicant profile"

    click_on "Create Job applicant profile"

    assert_text "Job applicant profile was successfully created"
    click_on "Back"
  end

  test "should update Job applicant profile" do
    visit job_applicant_profile_url(@job_applicant_profile)
    click_on "Edit this job applicant profile", match: :first

    click_on "Update Job applicant profile"

    assert_text "Job applicant profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Job applicant profile" do
    visit job_applicant_profile_url(@job_applicant_profile)
    click_on "Destroy this job applicant profile", match: :first

    assert_text "Job applicant profile was successfully destroyed"
  end
end
