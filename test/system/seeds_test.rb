require "application_system_test_case"

class SeedsTest < ApplicationSystemTestCase
  setup do
    @seed = seeds(:one)
  end

  test "visiting the index" do
    visit seeds_url
    assert_selector "h1", text: "Seeds"
  end

  test "creating a Seed" do
    visit seeds_url
    click_on "New Seed"

    fill_in "Lifespan", with: @seed.lifespan
    fill_in "Name", with: @seed.name
    fill_in "Quantity", with: @seed.quantity
    fill_in "Seasons", with: @seed.seasons
    fill_in "Supplier", with: @seed.supplier_id
    fill_in "Variety", with: @seed.variety
    click_on "Create Seed"

    assert_text "Seed was successfully created"
    click_on "Back"
  end

  test "updating a Seed" do
    visit seeds_url
    click_on "Edit", match: :first

    fill_in "Lifespan", with: @seed.lifespan
    fill_in "Name", with: @seed.name
    fill_in "Quantity", with: @seed.quantity
    fill_in "Seasons", with: @seed.seasons
    fill_in "Supplier", with: @seed.supplier_id
    fill_in "Variety", with: @seed.variety
    click_on "Update Seed"

    assert_text "Seed was successfully updated"
    click_on "Back"
  end

  test "destroying a Seed" do
    visit seeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seed was successfully destroyed"
  end
end
