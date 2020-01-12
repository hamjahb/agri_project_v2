require "application_system_test_case"

class WaterHistoriesTest < ApplicationSystemTestCase
  setup do
    @water_history = water_histories(:one)
  end

  test "visiting the index" do
    visit water_histories_url
    assert_selector "h1", text: "Water Histories"
  end

  test "creating a Water history" do
    visit water_histories_url
    click_on "New Water History"

    fill_in "Employee", with: @water_history.employee
    fill_in "End time", with: @water_history.end_time
    fill_in "Quantity", with: @water_history.quantity
    fill_in "Start time", with: @water_history.start_time
    fill_in "Zone", with: @water_history.zone_id
    click_on "Create Water history"

    assert_text "Water history was successfully created"
    click_on "Back"
  end

  test "updating a Water history" do
    visit water_histories_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @water_history.employee
    fill_in "End time", with: @water_history.end_time
    fill_in "Quantity", with: @water_history.quantity
    fill_in "Start time", with: @water_history.start_time
    fill_in "Zone", with: @water_history.zone_id
    click_on "Update Water history"

    assert_text "Water history was successfully updated"
    click_on "Back"
  end

  test "destroying a Water history" do
    visit water_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Water history was successfully destroyed"
  end
end
