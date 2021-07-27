require "test_helper"

class StudnetAttendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studnet_attending = studnet_attendings(:one)
  end

  test "should get index" do
    get studnet_attendings_url
    assert_response :success
  end

  test "should get new" do
    get new_studnet_attending_url
    assert_response :success
  end

  test "should create studnet_attending" do
    assert_difference('StudnetAttending.count') do
      post studnet_attendings_url, params: { studnet_attending: { attending_id: @studnet_attending.attending_id, student_id: @studnet_attending.student_id } }
    end

    assert_redirected_to studnet_attending_url(StudnetAttending.last)
  end

  test "should show studnet_attending" do
    get studnet_attending_url(@studnet_attending)
    assert_response :success
  end

  test "should get edit" do
    get edit_studnet_attending_url(@studnet_attending)
    assert_response :success
  end

  test "should update studnet_attending" do
    patch studnet_attending_url(@studnet_attending), params: { studnet_attending: { attending_id: @studnet_attending.attending_id, student_id: @studnet_attending.student_id } }
    assert_redirected_to studnet_attending_url(@studnet_attending)
  end

  test "should destroy studnet_attending" do
    assert_difference('StudnetAttending.count', -1) do
      delete studnet_attending_url(@studnet_attending)
    end

    assert_redirected_to studnet_attendings_url
  end
end
