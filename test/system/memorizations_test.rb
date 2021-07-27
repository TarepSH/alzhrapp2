require "application_system_test_case"

class MemorizationsTest < ApplicationSystemTestCase
  setup do
    @memorization = memorizations(:one)
  end

  test "visiting the index" do
    visit memorizations_url
    assert_selector "h1", text: "Memorizations"
  end

  test "creating a Memorization" do
    visit memorizations_url
    click_on "New Memorization"

    fill_in "Name", with: @memorization.name
    fill_in "Page", with: @memorization.page
    fill_in "Part", with: @memorization.part
    click_on "Create Memorization"

    assert_text "Memorization was successfully created"
    click_on "Back"
  end

  test "updating a Memorization" do
    visit memorizations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @memorization.name
    fill_in "Page", with: @memorization.page
    fill_in "Part", with: @memorization.part
    click_on "Update Memorization"

    assert_text "Memorization was successfully updated"
    click_on "Back"
  end

  test "destroying a Memorization" do
    visit memorizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memorization was successfully destroyed"
  end
end
