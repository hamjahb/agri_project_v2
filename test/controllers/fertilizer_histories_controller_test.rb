require 'test_helper'

class FertilizerHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fertilizer_history = fertilizer_histories(:one)
  end

  test "should get index" do
    get fertilizer_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_fertilizer_history_url
    assert_response :success
  end

  test "should create fertilizer_history" do
    assert_difference('FertilizerHistory.count') do
      post fertilizer_histories_url, params: { fertilizer_history: { empoyee: @fertilizer_history.empoyee, fertilizer_id: @fertilizer_history.fertilizer_id, quantity: @fertilizer_history.quantity, zone_id: @fertilizer_history.zone_id } }
    end

    assert_redirected_to fertilizer_history_url(FertilizerHistory.last)
  end

  test "should show fertilizer_history" do
    get fertilizer_history_url(@fertilizer_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_fertilizer_history_url(@fertilizer_history)
    assert_response :success
  end

  test "should update fertilizer_history" do
    patch fertilizer_history_url(@fertilizer_history), params: { fertilizer_history: { empoyee: @fertilizer_history.empoyee, fertilizer_id: @fertilizer_history.fertilizer_id, quantity: @fertilizer_history.quantity, zone_id: @fertilizer_history.zone_id } }
    assert_redirected_to fertilizer_history_url(@fertilizer_history)
  end

  test "should destroy fertilizer_history" do
    assert_difference('FertilizerHistory.count', -1) do
      delete fertilizer_history_url(@fertilizer_history)
    end

    assert_redirected_to fertilizer_histories_url
  end
end
