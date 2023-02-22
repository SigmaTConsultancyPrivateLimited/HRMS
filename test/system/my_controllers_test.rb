require "application_system_test_case"

class MyControllersTest < ApplicationSystemTestCase
  setup do
    @my_controller = my_controllers(:one)
  end

  test "visiting the index" do
    visit my_controllers_url
    assert_selector "h1", text: "My controllers"
  end

  test "should create my controller" do
    visit my_controllers_url
    click_on "New my controller"

    click_on "Create My controller"

    assert_text "My controller was successfully created"
    click_on "Back"
  end

  test "should update My controller" do
    visit my_controller_url(@my_controller)
    click_on "Edit this my controller", match: :first

    click_on "Update My controller"

    assert_text "My controller was successfully updated"
    click_on "Back"
  end

  test "should destroy My controller" do
    visit my_controller_url(@my_controller)
    click_on "Destroy this my controller", match: :first

    assert_text "My controller was successfully destroyed"
  end
end
