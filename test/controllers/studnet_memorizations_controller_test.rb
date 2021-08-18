require "test_helper"

class StudnetMemorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studnet_memorization = studnet_memorizations(:one)
  end

  test "should get index" do
    get studnet_memorizations_url
    assert_response :success
  end

  test "should get new" do
    get new_studnet_memorization_url
    assert_response :success
  end

  test "should create studnet_memorization" do
    assert_difference('StudnetMemorization.count') do
      post studnet_memorizations_url, params: { studnet_memorization: { memorization_id: @studnet_memorization.memorization_id, student_id: @studnet_memorization.student_id } }
    end

    assert_redirected_to studnet_memorization_url(StudnetMemorization.last)
  end

  test "should show studnet_memorization" do
    get studnet_memorization_url(@studnet_memorization)
    assert_response :success
  end

  test "should get edit" do
    get edit_studnet_memorization_url(@studnet_memorization)
    assert_response :success
  end

  test "should update studnet_memorization" do
    patch studnet_memorization_url(@studnet_memorization), params: { studnet_memorization: { memorization_id: @studnet_memorization.memorization_id, student_id: @studnet_memorization.student_id } }
    assert_redirected_to studnet_memorization_url(@studnet_memorization)
  end

  test "should destroy studnet_memorization" do
    assert_difference('StudnetMemorization.count', -1) do
      delete studnet_memorization_url(@studnet_memorization)
    end

    assert_redirected_to studnet_memorizations_url
  end
end
