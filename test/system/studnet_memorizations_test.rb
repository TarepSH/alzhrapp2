require "application_system_test_case"

class StudnetMemorizationsTest < ApplicationSystemTestCase
  setup do
    @studnet_memorization = studnet_memorizations(:one)
  end

  test "visiting the index" do
    visit studnet_memorizations_url
    assert_selector "h1", text: "Studnet Memorizations"
  end

  test "creating a Studnet memorization" do
    visit studnet_memorizations_url
    click_on "New Studnet Memorization"

    fill_in "Memorization", with: @studnet_memorization.memorization_id
    fill_in "Student", with: @studnet_memorization.student_id
    click_on "Create Studnet memorization"

    assert_text "Studnet memorization was successfully created"
    click_on "Back"
  end

  test "updating a Studnet memorization" do
    visit studnet_memorizations_url
    click_on "Edit", match: :first

    fill_in "Memorization", with: @studnet_memorization.memorization_id
    fill_in "Student", with: @studnet_memorization.student_id
    click_on "Update Studnet memorization"

    assert_text "Studnet memorization was successfully updated"
    click_on "Back"
  end

  test "destroying a Studnet memorization" do
    visit studnet_memorizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studnet memorization was successfully destroyed"
  end
end
