require 'test_helper'

class WaterHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_history = water_histories(:one)
  end

  test "should get index" do
    get water_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_water_history_url
    assert_response :success
  end

  test "should create water_history" do
    assert_difference('WaterHistory.count') do
      post water_histories_url, params: { water_history: { employee: @water_history.employee, end_time: @water_history.end_time, quantity: @water_history.quantity, start_time: @water_history.start_time, zone_id: @water_history.zone_id } }
    end

    assert_redirected_to water_history_url(WaterHistory.last)
  end

  test "should show water_history" do
    get water_history_url(@water_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_history_url(@water_history)
    assert_response :success
  end

  test "should update water_history" do
    patch water_history_url(@water_history), params: { water_history: { employee: @water_history.employee, end_time: @water_history.end_time, quantity: @water_history.quantity, start_time: @water_history.start_time, zone_id: @water_history.zone_id } }
    assert_redirected_to water_history_url(@water_history)
  end

  test "should destroy water_history" do
    assert_difference('WaterHistory.count', -1) do
      delete water_history_url(@water_history)
    end

    assert_redirected_to water_histories_url
  end
end
