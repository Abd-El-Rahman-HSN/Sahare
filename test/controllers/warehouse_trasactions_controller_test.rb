require 'test_helper'

class WarehouseTrasactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse_trasaction = warehouse_trasactions(:one)
  end

  test "should get index" do
    get warehouse_trasactions_url
    assert_response :success
  end

  test "should get new" do
    get new_warehouse_trasaction_url
    assert_response :success
  end

  test "should create warehouse_trasaction" do
    assert_difference('WarehouseTrasaction.count') do
      post warehouse_trasactions_url, params: { warehouse_trasaction: { item: @warehouse_trasaction.item, quantity: @warehouse_trasaction.quantity, warehouse_locations_id: @warehouse_trasaction.warehouse_locations_id } }
    end

    assert_redirected_to warehouse_trasaction_url(WarehouseTrasaction.last)
  end

  test "should show warehouse_trasaction" do
    get warehouse_trasaction_url(@warehouse_trasaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_trasaction_url(@warehouse_trasaction)
    assert_response :success
  end

  test "should update warehouse_trasaction" do
    patch warehouse_trasaction_url(@warehouse_trasaction), params: { warehouse_trasaction: { item: @warehouse_trasaction.item, quantity: @warehouse_trasaction.quantity, warehouse_locations_id: @warehouse_trasaction.warehouse_locations_id } }
    assert_redirected_to warehouse_trasaction_url(@warehouse_trasaction)
  end

  test "should destroy warehouse_trasaction" do
    assert_difference('WarehouseTrasaction.count', -1) do
      delete warehouse_trasaction_url(@warehouse_trasaction)
    end

    assert_redirected_to warehouse_trasactions_url
  end
end
