require "application_system_test_case"

class StudnetAttendingsTest < ApplicationSystemTestCase
  setup do
    @studnet_attending = studnet_attendings(:one)
  end

  test "visiting the index" do
    visit studnet_attendings_url
    assert_selector "h1", text: "Studnet Attendings"
  end

  test "creating a Studnet attending" do
    visit studnet_attendings_url
    click_on "New Studnet Attending"

    fill_in "Attending", with: @studnet_attending.attending_id
    fill_in "Student", with: @studnet_attending.student_id
    click_on "Create Studnet attending"

    assert_text "Studnet attending was successfully created"
    click_on "Back"
  end

  test "updating a Studnet attending" do
    visit studnet_attendings_url
    click_on "Edit", match: :first

    fill_in "Attending", with: @studnet_attending.attending_id
    fill_in "Student", with: @studnet_attending.student_id
    click_on "Update Studnet attending"

    assert_text "Studnet attending was successfully updated"
    click_on "Back"
  end

  test "destroying a Studnet attending" do
    visit studnet_attendings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studnet attending was successfully destroyed"
  end
end
