require "application_system_test_case"

class WarehouseLocationsTest < ApplicationSystemTestCase
  setup do
    @warehouse_location = warehouse_locations(:one)
  end

  test "visiting the index" do
    visit warehouse_locations_url
    assert_selector "h1", text: "Warehouse Locations"
  end

  test "creating a Warehouse location" do
    visit warehouse_locations_url
    click_on "New Warehouse Location"

    fill_in "Warloccode", with: @warehouse_location.warloccode
    fill_in "Warlocname", with: @warehouse_location.warlocname
    click_on "Create Warehouse location"

    assert_text "Warehouse location was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse location" do
    visit warehouse_locations_url
    click_on "Edit", match: :first

    fill_in "Warloccode", with: @warehouse_location.warloccode
    fill_in "Warlocname", with: @warehouse_location.warlocname
    click_on "Update Warehouse location"

    assert_text "Warehouse location was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse location" do
    visit warehouse_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse location was successfully destroyed"
  end
end
