require "application_system_test_case"

class ContractDetailsTest < ApplicationSystemTestCase
  setup do
    @contract_detail = contract_details(:one)
  end

  test "visiting the index" do
    visit contract_details_url
    assert_selector "h1", text: "Contract details"
  end

  test "should create contract detail" do
    visit contract_details_url
    click_on "New contract detail"

    click_on "Create Contract detail"

    assert_text "Contract detail was successfully created"
    click_on "Back"
  end

  test "should update Contract detail" do
    visit contract_detail_url(@contract_detail)
    click_on "Edit this contract detail", match: :first

    click_on "Update Contract detail"

    assert_text "Contract detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract detail" do
    visit contract_detail_url(@contract_detail)
    click_on "Destroy this contract detail", match: :first

    assert_text "Contract detail was successfully destroyed"
  end
end
