require 'test_helper'

class ZoneHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_history = zone_histories(:one)
  end

  test "should get index" do
    get zone_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_history_url
    assert_response :success
  end

  test "should create zone_history" do
    assert_difference('ZoneHistory.count') do
      post zone_histories_url, params: { zone_history: { employee: @zone_history.employee, task: @zone_history.task, zone_id: @zone_history.zone_id } }
    end

    assert_redirected_to zone_history_url(ZoneHistory.last)
  end

  test "should show zone_history" do
    get zone_history_url(@zone_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_history_url(@zone_history)
    assert_response :success
  end

  test "should update zone_history" do
    patch zone_history_url(@zone_history), params: { zone_history: { employee: @zone_history.employee, task: @zone_history.task, zone_id: @zone_history.zone_id } }
    assert_redirected_to zone_history_url(@zone_history)
  end

  test "should destroy zone_history" do
    assert_difference('ZoneHistory.count', -1) do
      delete zone_history_url(@zone_history)
    end

    assert_redirected_to zone_histories_url
  end
end
