require 'test_helper'

class HarvestHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_history = harvest_histories(:one)
  end

  test "should get index" do
    get harvest_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_harvest_history_url
    assert_response :success
  end

  test "should create harvest_history" do
    assert_difference('HarvestHistory.count') do
      post harvest_histories_url, params: { harvest_history: { employee: @harvest_history.employee, price: @harvest_history.price, quantity: @harvest_history.quantity, zone_id: @harvest_history.zone_id } }
    end

    assert_redirected_to harvest_history_url(HarvestHistory.last)
  end

  test "should show harvest_history" do
    get harvest_history_url(@harvest_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_harvest_history_url(@harvest_history)
    assert_response :success
  end

  test "should update harvest_history" do
    patch harvest_history_url(@harvest_history), params: { harvest_history: { employee: @harvest_history.employee, price: @harvest_history.price, quantity: @harvest_history.quantity, zone_id: @harvest_history.zone_id } }
    assert_redirected_to harvest_history_url(@harvest_history)
  end

  test "should destroy harvest_history" do
    assert_difference('HarvestHistory.count', -1) do
      delete harvest_history_url(@harvest_history)
    end

    assert_redirected_to harvest_histories_url
  end
end
