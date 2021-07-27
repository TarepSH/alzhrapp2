require "test_helper"

class MemorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorization = memorizations(:one)
  end

  test "should get index" do
    get memorizations_url
    assert_response :success
  end

  test "should get new" do
    get new_memorization_url
    assert_response :success
  end

  test "should create memorization" do
    assert_difference('Memorization.count') do
      post memorizations_url, params: { memorization: { name: @memorization.name, page: @memorization.page, part: @memorization.part } }
    end

    assert_redirected_to memorization_url(Memorization.last)
  end

  test "should show memorization" do
    get memorization_url(@memorization)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorization_url(@memorization)
    assert_response :success
  end

  test "should update memorization" do
    patch memorization_url(@memorization), params: { memorization: { name: @memorization.name, page: @memorization.page, part: @memorization.part } }
    assert_redirected_to memorization_url(@memorization)
  end

  test "should destroy memorization" do
    assert_difference('Memorization.count', -1) do
      delete memorization_url(@memorization)
    end

    assert_redirected_to memorizations_url
  end
end
