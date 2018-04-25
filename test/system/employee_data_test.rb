require "application_system_test_case"

class EmployeeDataTest < ApplicationSystemTestCase
  setup do
    @employee_datum = employee_data(:one)
  end

  test "visiting the index" do
    visit employee_data_url
    assert_selector "h1", text: "Employee Data"
  end

  test "creating a Employee datum" do
    visit employee_data_url
    click_on "New Employee Datum"

    fill_in "Name", with: @employee_datum.name
    fill_in "Pass", with: @employee_datum.pass
    fill_in "Role", with: @employee_datum.role
    fill_in "User", with: @employee_datum.user
    click_on "Create Employee datum"

    assert_text "Employee datum was successfully created"
    click_on "Back"
  end

  test "updating a Employee datum" do
    visit employee_data_url
    click_on "Edit", match: :first

    fill_in "Name", with: @employee_datum.name
    fill_in "Pass", with: @employee_datum.pass
    fill_in "Role", with: @employee_datum.role
    fill_in "User", with: @employee_datum.user
    click_on "Update Employee datum"

    assert_text "Employee datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee datum" do
    visit employee_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee datum was successfully destroyed"
  end
end
