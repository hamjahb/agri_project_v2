require "application_system_test_case"

class FertilizerHistoriesTest < ApplicationSystemTestCase
  setup do
    @fertilizer_history = fertilizer_histories(:one)
  end

  test "visiting the index" do
    visit fertilizer_histories_url
    assert_selector "h1", text: "Fertilizer Histories"
  end

  test "creating a Fertilizer history" do
    visit fertilizer_histories_url
    click_on "New Fertilizer History"

    fill_in "Empoyee", with: @fertilizer_history.empoyee
    fill_in "Fertilizer", with: @fertilizer_history.fertilizer_id
    fill_in "Quantity", with: @fertilizer_history.quantity
    fill_in "Zone", with: @fertilizer_history.zone_id
    click_on "Create Fertilizer history"

    assert_text "Fertilizer history was successfully created"
    click_on "Back"
  end

  test "updating a Fertilizer history" do
    visit fertilizer_histories_url
    click_on "Edit", match: :first

    fill_in "Empoyee", with: @fertilizer_history.empoyee
    fill_in "Fertilizer", with: @fertilizer_history.fertilizer_id
    fill_in "Quantity", with: @fertilizer_history.quantity
    fill_in "Zone", with: @fertilizer_history.zone_id
    click_on "Update Fertilizer history"

    assert_text "Fertilizer history was successfully updated"
    click_on "Back"
  end

  test "destroying a Fertilizer history" do
    visit fertilizer_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fertilizer history was successfully destroyed"
  end
end
