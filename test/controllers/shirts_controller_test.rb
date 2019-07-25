require 'test_helper'

class ShirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shirt = shirts(:one)
  end

  test "should get index" do
    get shirts_url, as: :json
    assert_response :success
  end

  test "should create shirt" do
    assert_difference('Shirt.count') do
      post shirts_url, params: { shirt: { blob: @shirt.blob, email: @shirt.email, email2: @shirt.email2, email3: @shirt.email3, email4: @shirt.email4, email5: @shirt.email5, name: @shirt.name, project: @shirt.project } }, as: :json
    end

    assert_response 201
  end

  test "should show shirt" do
    get shirt_url(@shirt), as: :json
    assert_response :success
  end

  test "should update shirt" do
    patch shirt_url(@shirt), params: { shirt: { blob: @shirt.blob, email: @shirt.email, email2: @shirt.email2, email3: @shirt.email3, email4: @shirt.email4, email5: @shirt.email5, name: @shirt.name, project: @shirt.project } }, as: :json
    assert_response 200
  end

  test "should destroy shirt" do
    assert_difference('Shirt.count', -1) do
      delete shirt_url(@shirt), as: :json
    end

    assert_response 204
  end
end
