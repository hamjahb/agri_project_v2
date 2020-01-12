require "application_system_test_case"

class EquipmentHistoriesTest < ApplicationSystemTestCase
  setup do
    @equipment_history = equipment_histories(:one)
  end

  test "visiting the index" do
    visit equipment_histories_url
    assert_selector "h1", text: "Equipment Histories"
  end

  test "creating a Equipment history" do
    visit equipment_histories_url
    click_on "New Equipment History"

    fill_in "Date", with: @equipment_history.date
    fill_in "Description", with: @equipment_history.description
    fill_in "Employee", with: @equipment_history.employee
    fill_in "Equipment", with: @equipment_history.equipment_id
    fill_in "Next maintinance", with: @equipment_history.next_maintinance
    fill_in "Task", with: @equipment_history.task
    click_on "Create Equipment history"

    assert_text "Equipment history was successfully created"
    click_on "Back"
  end

  test "updating a Equipment history" do
    visit equipment_histories_url
    click_on "Edit", match: :first

    fill_in "Date", with: @equipment_history.date
    fill_in "Description", with: @equipment_history.description
    fill_in "Employee", with: @equipment_history.employee
    fill_in "Equipment", with: @equipment_history.equipment_id
    fill_in "Next maintinance", with: @equipment_history.next_maintinance
    fill_in "Task", with: @equipment_history.task
    click_on "Update Equipment history"

    assert_text "Equipment history was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment history" do
    visit equipment_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment history was successfully destroyed"
  end
end
