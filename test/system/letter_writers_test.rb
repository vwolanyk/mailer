require "application_system_test_case"

class LetterWritersTest < ApplicationSystemTestCase
  setup do
    @letter_writer = letter_writers(:one)
  end

  test "visiting the index" do
    visit letter_writers_url
    assert_selector "h1", text: "Letter Writers"
  end

  test "creating a Letter writer" do
    visit letter_writers_url
    click_on "New Letter Writer"

    fill_in "Email", with: @letter_writer.email
    fill_in "Name", with: @letter_writer.name
    click_on "Create Letter writer"

    assert_text "Letter writer was successfully created"
    click_on "Back"
  end

  test "updating a Letter writer" do
    visit letter_writers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @letter_writer.email
    fill_in "Name", with: @letter_writer.name
    click_on "Update Letter writer"

    assert_text "Letter writer was successfully updated"
    click_on "Back"
  end

  test "destroying a Letter writer" do
    visit letter_writers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Letter writer was successfully destroyed"
  end
end
