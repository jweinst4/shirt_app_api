require 'test_helper'

class DarkpricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @darkprice = darkprices(:one)
  end

  test "should get index" do
    get darkprices_url, as: :json
    assert_response :success
  end

  test "should create darkprice" do
    assert_difference('Darkprice.count') do
      post darkprices_url, params: { darkprice: { colors: @darkprice.colors, five: @darkprice.five, four: @darkprice.four, one: @darkprice.one, three: @darkprice.three, two: @darkprice.two } }, as: :json
    end

    assert_response 201
  end

  test "should show darkprice" do
    get darkprice_url(@darkprice), as: :json
    assert_response :success
  end

  test "should update darkprice" do
    patch darkprice_url(@darkprice), params: { darkprice: { colors: @darkprice.colors, five: @darkprice.five, four: @darkprice.four, one: @darkprice.one, three: @darkprice.three, two: @darkprice.two } }, as: :json
    assert_response 200
  end

  test "should destroy darkprice" do
    assert_difference('Darkprice.count', -1) do
      delete darkprice_url(@darkprice), as: :json
    end

    assert_response 204
  end
end
