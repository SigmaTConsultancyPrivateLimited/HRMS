require "test_helper"

class ContractDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_detail = contract_details(:one)
  end

  test "should get index" do
    get contract_details_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_detail_url
    assert_response :success
  end

  test "should create contract_detail" do
    assert_difference("ContractDetail.count") do
      post contract_details_url, params: { contract_detail: {  } }
    end

    assert_redirected_to contract_detail_url(ContractDetail.last)
  end

  test "should show contract_detail" do
    get contract_detail_url(@contract_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_detail_url(@contract_detail)
    assert_response :success
  end

  test "should update contract_detail" do
    patch contract_detail_url(@contract_detail), params: { contract_detail: {  } }
    assert_redirected_to contract_detail_url(@contract_detail)
  end

  test "should destroy contract_detail" do
    assert_difference("ContractDetail.count", -1) do
      delete contract_detail_url(@contract_detail)
    end

    assert_redirected_to contract_details_url
  end
end
