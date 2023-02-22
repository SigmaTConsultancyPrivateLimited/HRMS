require "application_system_test_case"

class JobVacanciesTest < ApplicationSystemTestCase
  setup do
    @job_vacancy = job_vacancies(:one)
  end

  test "visiting the index" do
    visit job_vacancies_url
    assert_selector "h1", text: "Job vacancies"
  end

  test "should create job vacancy" do
    visit job_vacancies_url
    click_on "New job vacancy"

    click_on "Create Job vacancy"

    assert_text "Job vacancy was successfully created"
    click_on "Back"
  end

  test "should update Job vacancy" do
    visit job_vacancy_url(@job_vacancy)
    click_on "Edit this job vacancy", match: :first

    click_on "Update Job vacancy"

    assert_text "Job vacancy was successfully updated"
    click_on "Back"
  end

  test "should destroy Job vacancy" do
    visit job_vacancy_url(@job_vacancy)
    click_on "Destroy this job vacancy", match: :first

    assert_text "Job vacancy was successfully destroyed"
  end
end
