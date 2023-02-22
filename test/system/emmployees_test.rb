require "application_system_test_case"

class EmmployeesTest < ApplicationSystemTestCase
  setup do
    @emmployee = emmployees(:one)
  end

  test "visiting the index" do
    visit emmployees_url
    assert_selector "h1", text: "Emmployees"
  end

  test "should create emmployee" do
    visit emmployees_url
    click_on "New emmployee"

    click_on "Create Emmployee"

    assert_text "Emmployee was successfully created"
    click_on "Back"
  end

  test "should update Emmployee" do
    visit emmployee_url(@emmployee)
    click_on "Edit this emmployee", match: :first

    click_on "Update Emmployee"

    assert_text "Emmployee was successfully updated"
    click_on "Back"
  end

  test "should destroy Emmployee" do
    visit emmployee_url(@emmployee)
    click_on "Destroy this emmployee", match: :first

    assert_text "Emmployee was successfully destroyed"
  end
end
