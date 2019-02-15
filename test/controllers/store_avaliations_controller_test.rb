require 'test_helper'

class StoreAvaliationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_avaliations = store_avaliations(:one)
  end

  test "should get index" do
    get store_avaliations_url
    assert_response :success
  end

  test "should get new" do
    get new_store_avaliation_url
    assert_response :success
  end

  test "should create store_avaliation" do
    assert_difference('StoreAvaliation.count') do
      post store_avaliations_url, params: { store_avaliation: { avaliation: @store_avaliation.avaliation, store_id: @store_avaliation.store_id, user_id: @store_avaliation.user_id } }
    end

    assert_redirected_to store_avaliation_url(StoreAvaliation.last)
  end

  test "should show store_avaliation" do
    get store_avaliation_url(@store_avaliation)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_avaliation_url(@store_avaliation)
    assert_response :success
  end

  test "should update store_avaliation" do
    patch store_avaliation_url(@store_avaliation), params: { store_avaliation: { avaliation: @store_avaliation.avaliation, store_id: @store_avaliation.store_id, user_id: @store_avaliation.user_id } }
    assert_redirected_to store_avaliation_url(@store_avaliation)
  end

  test "should destroy store_avaliation" do
    assert_difference('StoreAvaliation.count', -1) do
      delete store_avaliation_url(@store_avaliation)
    end

    assert_redirected_to store_avaliations_url
  end
end
