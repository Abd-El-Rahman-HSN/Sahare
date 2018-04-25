require "application_system_test_case"

class ItemDatesTest < ApplicationSystemTestCase
  setup do
    @item_date = item_dates(:one)
  end

  test "visiting the index" do
    visit item_dates_url
    assert_selector "h1", text: "Item Dates"
  end

  test "creating a Item date" do
    visit item_dates_url
    click_on "New Item Date"

    fill_in "Description", with: @item_date.description
    fill_in "Itemcode", with: @item_date.itemcode
    fill_in "Itemname", with: @item_date.itemname
    click_on "Create Item date"

    assert_text "Item date was successfully created"
    click_on "Back"
  end

  test "updating a Item date" do
    visit item_dates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @item_date.description
    fill_in "Itemcode", with: @item_date.itemcode
    fill_in "Itemname", with: @item_date.itemname
    click_on "Update Item date"

    assert_text "Item date was successfully updated"
    click_on "Back"
  end

  test "destroying a Item date" do
    visit item_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item date was successfully destroyed"
  end
end
