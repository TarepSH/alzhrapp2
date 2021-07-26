require "test_helper"

class StudentclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentclass = studentclasses(:one)
  end

  test "should get index" do
    get studentclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_studentclass_url
    assert_response :success
  end

  test "should create studentclass" do
    assert_difference('Studentclass.count') do
      post studentclasses_url, params: { studentclass: { name: @studentclass.name, students_id: @studentclass.students_id } }
    end

    assert_redirected_to studentclass_url(Studentclass.last)
  end

  test "should show studentclass" do
    get studentclass_url(@studentclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentclass_url(@studentclass)
    assert_response :success
  end

  test "should update studentclass" do
    patch studentclass_url(@studentclass), params: { studentclass: { name: @studentclass.name, students_id: @studentclass.students_id } }
    assert_redirected_to studentclass_url(@studentclass)
  end

  test "should destroy studentclass" do
    assert_difference('Studentclass.count', -1) do
      delete studentclass_url(@studentclass)
    end

    assert_redirected_to studentclasses_url
  end
end
