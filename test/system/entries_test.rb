require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Entries"
  end

  test "creating a Entry" do
    visit entries_url
    click_on "New Entry"

    fill_in "Date", with: @entry.date
    fill_in "Emotion", with: @entry.emotion
    fill_in "Rating", with: @entry.rating
    fill_in "Thoughts", with: @entry.thoughts
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back"
  end

  test "updating a Entry" do
    visit entries_url
    click_on "Edit", match: :first

    fill_in "Date", with: @entry.date
    fill_in "Emotion", with: @entry.emotion
    fill_in "Rating", with: @entry.rating
    fill_in "Thoughts", with: @entry.thoughts
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry" do
    visit entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry was successfully destroyed"
  end
end
