require 'test_helper'

class ThanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thank = thanks(:one)
  end

  test "should get index" do
    get thanks_url
    assert_response :success
  end

  test "should get new" do
    get new_thank_url
    assert_response :success
  end

  test "should create thank" do
    assert_difference('Thank.count') do
      post thanks_url, params: { thank: { idea_id: @thank.idea_id, user_name: @thank.user_name } }
    end

    assert_redirected_to thank_url(Thank.last)
  end

  test "should show thank" do
    get thank_url(@thank)
    assert_response :success
  end

  test "should get edit" do
    get edit_thank_url(@thank)
    assert_response :success
  end

  test "should update thank" do
    patch thank_url(@thank), params: { thank: { idea_id: @thank.idea_id, user_name: @thank.user_name } }
    assert_redirected_to thank_url(@thank)
  end

  test "should destroy thank" do
    assert_difference('Thank.count', -1) do
      delete thank_url(@thank)
    end

    assert_redirected_to thanks_url
  end
end
