require 'test_helper'

class EquipmentHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_history = equipment_histories(:one)
  end

  test "should get index" do
    get equipment_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_history_url
    assert_response :success
  end

  test "should create equipment_history" do
    assert_difference('EquipmentHistory.count') do
      post equipment_histories_url, params: { equipment_history: { date: @equipment_history.date, description: @equipment_history.description, employee: @equipment_history.employee, equipment_id: @equipment_history.equipment_id, next_maintinance: @equipment_history.next_maintinance, task: @equipment_history.task } }
    end

    assert_redirected_to equipment_history_url(EquipmentHistory.last)
  end

  test "should show equipment_history" do
    get equipment_history_url(@equipment_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_history_url(@equipment_history)
    assert_response :success
  end

  test "should update equipment_history" do
    patch equipment_history_url(@equipment_history), params: { equipment_history: { date: @equipment_history.date, description: @equipment_history.description, employee: @equipment_history.employee, equipment_id: @equipment_history.equipment_id, next_maintinance: @equipment_history.next_maintinance, task: @equipment_history.task } }
    assert_redirected_to equipment_history_url(@equipment_history)
  end

  test "should destroy equipment_history" do
    assert_difference('EquipmentHistory.count', -1) do
      delete equipment_history_url(@equipment_history)
    end

    assert_redirected_to equipment_histories_url
  end
end
