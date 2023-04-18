require "application_system_test_case"

class JobContractsTest < ApplicationSystemTestCase
  setup do
    @job_contract = job_contracts(:one)
  end

  test "visiting the index" do
    visit job_contracts_url
    assert_selector "h1", text: "Job contracts"
  end

  test "should create job contract" do
    visit job_contracts_url
    click_on "New job contract"

    click_on "Create Job contract"

    assert_text "Job contract was successfully created"
    click_on "Back"
  end

  test "should update Job contract" do
    visit job_contract_url(@job_contract)
    click_on "Edit this job contract", match: :first

    click_on "Update Job contract"

    assert_text "Job contract was successfully updated"
    click_on "Back"
  end

  test "should destroy Job contract" do
    visit job_contract_url(@job_contract)
    click_on "Destroy this job contract", match: :first

    assert_text "Job contract was successfully destroyed"
  end
end
