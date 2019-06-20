require 'test_helper'

class PricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price = prices(:one)
  end

  test "should get index" do
    get prices_url, as: :json
    assert_response :success
  end

  test "should create price" do
    assert_difference('Price.count') do
      post prices_url, params: { price: { 1: @price.1, 2: @price.2, 3: @price.3, 4: @price.4, 5: @price.5, colors: @price.colors } }, as: :json
    end

    assert_response 201
  end

  test "should show price" do
    get price_url(@price), as: :json
    assert_response :success
  end

  test "should update price" do
    patch price_url(@price), params: { price: { 1: @price.1, 2: @price.2, 3: @price.3, 4: @price.4, 5: @price.5, colors: @price.colors } }, as: :json
    assert_response 200
  end

  test "should destroy price" do
    assert_difference('Price.count', -1) do
      delete price_url(@price), as: :json
    end

    assert_response 204
  end
end
