require 'test_helper'

class ItemDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_date = item_dates(:one)
  end

  test "should get index" do
    get item_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_item_date_url
    assert_response :success
  end

  test "should create item_date" do
    assert_difference('ItemDate.count') do
      post item_dates_url, params: { item_date: { description: @item_date.description, itemcode: @item_date.itemcode, itemname: @item_date.itemname } }
    end

    assert_redirected_to item_date_url(ItemDate.last)
  end

  test "should show item_date" do
    get item_date_url(@item_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_date_url(@item_date)
    assert_response :success
  end

  test "should update item_date" do
    patch item_date_url(@item_date), params: { item_date: { description: @item_date.description, itemcode: @item_date.itemcode, itemname: @item_date.itemname } }
    assert_redirected_to item_date_url(@item_date)
  end

  test "should destroy item_date" do
    assert_difference('ItemDate.count', -1) do
      delete item_date_url(@item_date)
    end

    assert_redirected_to item_dates_url
  end
end
