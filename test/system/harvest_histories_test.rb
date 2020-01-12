require "application_system_test_case"

class HarvestHistoriesTest < ApplicationSystemTestCase
  setup do
    @harvest_history = harvest_histories(:one)
  end

  test "visiting the index" do
    visit harvest_histories_url
    assert_selector "h1", text: "Harvest Histories"
  end

  test "creating a Harvest history" do
    visit harvest_histories_url
    click_on "New Harvest History"

    fill_in "Employee", with: @harvest_history.employee
    fill_in "Price", with: @harvest_history.price
    fill_in "Quantity", with: @harvest_history.quantity
    fill_in "Zone", with: @harvest_history.zone_id
    click_on "Create Harvest history"

    assert_text "Harvest history was successfully created"
    click_on "Back"
  end

  test "updating a Harvest history" do
    visit harvest_histories_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @harvest_history.employee
    fill_in "Price", with: @harvest_history.price
    fill_in "Quantity", with: @harvest_history.quantity
    fill_in "Zone", with: @harvest_history.zone_id
    click_on "Update Harvest history"

    assert_text "Harvest history was successfully updated"
    click_on "Back"
  end

  test "destroying a Harvest history" do
    visit harvest_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harvest history was successfully destroyed"
  end
end
