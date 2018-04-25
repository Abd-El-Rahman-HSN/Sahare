require "application_system_test_case"

class WarehouseTrasactionsTest < ApplicationSystemTestCase
  setup do
    @warehouse_trasaction = warehouse_trasactions(:one)
  end

  test "visiting the index" do
    visit warehouse_trasactions_url
    assert_selector "h1", text: "Warehouse Trasactions"
  end

  test "creating a Warehouse trasaction" do
    visit warehouse_trasactions_url
    click_on "New Warehouse Trasaction"

    fill_in "Item", with: @warehouse_trasaction.item
    fill_in "Quantity", with: @warehouse_trasaction.quantity
    fill_in "Warehouse Locations", with: @warehouse_trasaction.warehouse_locations_id
    click_on "Create Warehouse trasaction"

    assert_text "Warehouse trasaction was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse trasaction" do
    visit warehouse_trasactions_url
    click_on "Edit", match: :first

    fill_in "Item", with: @warehouse_trasaction.item
    fill_in "Quantity", with: @warehouse_trasaction.quantity
    fill_in "Warehouse Locations", with: @warehouse_trasaction.warehouse_locations_id
    click_on "Update Warehouse trasaction"

    assert_text "Warehouse trasaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse trasaction" do
    visit warehouse_trasactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse trasaction was successfully destroyed"
  end
end
