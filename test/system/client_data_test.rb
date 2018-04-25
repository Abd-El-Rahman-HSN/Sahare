require "application_system_test_case"

class ClientDataTest < ApplicationSystemTestCase
  setup do
    @client_datum = client_data(:one)
  end

  test "visiting the index" do
    visit client_data_url
    assert_selector "h1", text: "Client Data"
  end

  test "creating a Client datum" do
    visit client_data_url
    click_on "New Client Datum"

    fill_in "Code", with: @client_datum.code
    fill_in "Name", with: @client_datum.name
    click_on "Create Client datum"

    assert_text "Client datum was successfully created"
    click_on "Back"
  end

  test "updating a Client datum" do
    visit client_data_url
    click_on "Edit", match: :first

    fill_in "Code", with: @client_datum.code
    fill_in "Name", with: @client_datum.name
    click_on "Update Client datum"

    assert_text "Client datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Client datum" do
    visit client_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client datum was successfully destroyed"
  end
end
