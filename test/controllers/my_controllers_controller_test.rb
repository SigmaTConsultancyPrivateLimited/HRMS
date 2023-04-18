require "test_helper"

class MyControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_controller = my_controllers(:one)
  end

  test "should get index" do
    get my_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_my_controller_url
    assert_response :success
  end

  test "should create my_controller" do
    assert_difference("MyController.count") do
      post my_controllers_url, params: { my_controller: {  } }
    end

    assert_redirected_to my_controller_url(MyController.last)
  end

  test "should show my_controller" do
    get my_controller_url(@my_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_controller_url(@my_controller)
    assert_response :success
  end

  test "should update my_controller" do
    patch my_controller_url(@my_controller), params: { my_controller: {  } }
    assert_redirected_to my_controller_url(@my_controller)
  end

  test "should destroy my_controller" do
    assert_difference("MyController.count", -1) do
      delete my_controller_url(@my_controller)
    end

    assert_redirected_to my_controllers_url
  end
end
