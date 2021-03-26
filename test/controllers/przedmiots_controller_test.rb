require "test_helper"

class PrzedmiotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @przedmiot = przedmiots(:one)
  end

  test "should get index" do
    get przedmiots_url
    assert_response :success
  end

  test "should get new" do
    get new_przedmiot_url
    assert_response :success
  end

  test "should create przedmiot" do
    assert_difference('Przedmiot.count') do
      post przedmiots_url, params: { przedmiot: { brand: @przedmiot.brand, conditon: @przedmiot.conditon, description: @przedmiot.description, model: @przedmiot.model, price: @przedmiot.price, title: @przedmiot.title } }
    end

    assert_redirected_to przedmiot_url(Przedmiot.last)
  end

  test "should show przedmiot" do
    get przedmiot_url(@przedmiot)
    assert_response :success
  end

  test "should get edit" do
    get edit_przedmiot_url(@przedmiot)
    assert_response :success
  end

  test "should update przedmiot" do
    patch przedmiot_url(@przedmiot), params: { przedmiot: { brand: @przedmiot.brand, conditon: @przedmiot.conditon, description: @przedmiot.description, model: @przedmiot.model, price: @przedmiot.price, title: @przedmiot.title } }
    assert_redirected_to przedmiot_url(@przedmiot)
  end

  test "should destroy przedmiot" do
    assert_difference('Przedmiot.count', -1) do
      delete przedmiot_url(@przedmiot)
    end

    assert_redirected_to przedmiots_url
  end
end
