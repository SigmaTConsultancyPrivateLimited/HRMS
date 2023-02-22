require "test_helper"

class JobVacanciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_vacancy = job_vacancies(:one)
  end

  test "should get index" do
    get job_vacancies_url
    assert_response :success
  end

  test "should get new" do
    get new_job_vacancy_url
    assert_response :success
  end

  test "should create job_vacancy" do
    assert_difference("JobVacancy.count") do
      post job_vacancies_url, params: { job_vacancy: {  } }
    end

    assert_redirected_to job_vacancy_url(JobVacancy.last)
  end

  test "should show job_vacancy" do
    get job_vacancy_url(@job_vacancy)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_vacancy_url(@job_vacancy)
    assert_response :success
  end

  test "should update job_vacancy" do
    patch job_vacancy_url(@job_vacancy), params: { job_vacancy: {  } }
    assert_redirected_to job_vacancy_url(@job_vacancy)
  end

  test "should destroy job_vacancy" do
    assert_difference("JobVacancy.count", -1) do
      delete job_vacancy_url(@job_vacancy)
    end

    assert_redirected_to job_vacancies_url
  end
end
