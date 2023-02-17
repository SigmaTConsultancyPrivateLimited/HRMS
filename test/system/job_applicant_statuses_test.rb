require "application_system_test_case"

class JobApplicantStatusesTest < ApplicationSystemTestCase
  setup do
    @job_applicant_status = job_applicant_statuses(:one)
  end

  test "visiting the index" do
    visit job_applicant_statuses_url
    assert_selector "h1", text: "Job applicant statuses"
  end

  test "should create job applicant status" do
    visit job_applicant_statuses_url
    click_on "New job applicant status"

    click_on "Create Job applicant status"

    assert_text "Job applicant status was successfully created"
    click_on "Back"
  end

  test "should update Job applicant status" do
    visit job_applicant_status_url(@job_applicant_status)
    click_on "Edit this job applicant status", match: :first

    click_on "Update Job applicant status"

    assert_text "Job applicant status was successfully updated"
    click_on "Back"
  end

  test "should destroy Job applicant status" do
    visit job_applicant_status_url(@job_applicant_status)
    click_on "Destroy this job applicant status", match: :first

    assert_text "Job applicant status was successfully destroyed"
  end
end
