require 'test_helper'

class ClientDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_datum = client_data(:one)
  end

  test "should get index" do
    get client_data_url
    assert_response :success
  end

  test "should get new" do
    get new_client_datum_url
    assert_response :success
  end

  test "should create client_datum" do
    assert_difference('ClientDatum.count') do
      post client_data_url, params: { client_datum: { code: @client_datum.code, name: @client_datum.name } }
    end

    assert_redirected_to client_datum_url(ClientDatum.last)
  end

  test "should show client_datum" do
    get client_datum_url(@client_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_datum_url(@client_datum)
    assert_response :success
  end

  test "should update client_datum" do
    patch client_datum_url(@client_datum), params: { client_datum: { code: @client_datum.code, name: @client_datum.name } }
    assert_redirected_to client_datum_url(@client_datum)
  end

  test "should destroy client_datum" do
    assert_difference('ClientDatum.count', -1) do
      delete client_datum_url(@client_datum)
    end

    assert_redirected_to client_data_url
  end
end
