require 'test_helper'

class WarehouseLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse_location = warehouse_locations(:one)
  end

  test "should get index" do
    get warehouse_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_warehouse_location_url
    assert_response :success
  end

  test "should create warehouse_location" do
    assert_difference('WarehouseLocation.count') do
      post warehouse_locations_url, params: { warehouse_location: { warloccode: @warehouse_location.warloccode, warlocname: @warehouse_location.warlocname } }
    end

    assert_redirected_to warehouse_location_url(WarehouseLocation.last)
  end

  test "should show warehouse_location" do
    get warehouse_location_url(@warehouse_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_location_url(@warehouse_location)
    assert_response :success
  end

  test "should update warehouse_location" do
    patch warehouse_location_url(@warehouse_location), params: { warehouse_location: { warloccode: @warehouse_location.warloccode, warlocname: @warehouse_location.warlocname } }
    assert_redirected_to warehouse_location_url(@warehouse_location)
  end

  test "should destroy warehouse_location" do
    assert_difference('WarehouseLocation.count', -1) do
      delete warehouse_location_url(@warehouse_location)
    end

    assert_redirected_to warehouse_locations_url
  end
end
