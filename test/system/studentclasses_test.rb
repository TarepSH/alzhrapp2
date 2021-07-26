require "application_system_test_case"

class StudentclassesTest < ApplicationSystemTestCase
  setup do
    @studentclass = studentclasses(:one)
  end

  test "visiting the index" do
    visit studentclasses_url
    assert_selector "h1", text: "Studentclasses"
  end

  test "creating a Studentclass" do
    visit studentclasses_url
    click_on "New Studentclass"

    fill_in "Name", with: @studentclass.name
    fill_in "Students", with: @studentclass.students_id
    click_on "Create Studentclass"

    assert_text "Studentclass was successfully created"
    click_on "Back"
  end

  test "updating a Studentclass" do
    visit studentclasses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @studentclass.name
    fill_in "Students", with: @studentclass.students_id
    click_on "Update Studentclass"

    assert_text "Studentclass was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentclass" do
    visit studentclasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentclass was successfully destroyed"
  end
end
