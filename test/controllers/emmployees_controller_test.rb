require "test_helper"

class EmmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emmployee = emmployees(:one)
  end

  test "should get index" do
    get emmployees_url
    assert_response :success
  end

  test "should get new" do
    get new_emmployee_url
    assert_response :success
  end

  test "should create emmployee" do
    assert_difference("Emmployee.count") do
      post emmployees_url, params: { emmployee: {  } }
    end

    assert_redirected_to emmployee_url(Emmployee.last)
  end

  test "should show emmployee" do
    get emmployee_url(@emmployee)
    assert_response :success
  end

  test "should get edit" do
    get edit_emmployee_url(@emmployee)
    assert_response :success
  end

  test "should update emmployee" do
    patch emmployee_url(@emmployee), params: { emmployee: {  } }
    assert_redirected_to emmployee_url(@emmployee)
  end

  test "should destroy emmployee" do
    assert_difference("Emmployee.count", -1) do
      delete emmployee_url(@emmployee)
    end

    assert_redirected_to emmployees_url
  end
end
