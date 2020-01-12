require "application_system_test_case"

class ZoneHistoriesTest < ApplicationSystemTestCase
  setup do
    @zone_history = zone_histories(:one)
  end

  test "visiting the index" do
    visit zone_histories_url
    assert_selector "h1", text: "Zone Histories"
  end

  test "creating a Zone history" do
    visit zone_histories_url
    click_on "New Zone History"

    fill_in "Employee", with: @zone_history.employee
    fill_in "Task", with: @zone_history.task
    fill_in "Zone", with: @zone_history.zone_id
    click_on "Create Zone history"

    assert_text "Zone history was successfully created"
    click_on "Back"
  end

  test "updating a Zone history" do
    visit zone_histories_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @zone_history.employee
    fill_in "Task", with: @zone_history.task
    fill_in "Zone", with: @zone_history.zone_id
    click_on "Update Zone history"

    assert_text "Zone history was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone history" do
    visit zone_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone history was successfully destroyed"
  end
end
