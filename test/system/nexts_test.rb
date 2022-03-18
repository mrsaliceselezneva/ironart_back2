require "application_system_test_case"

class NextsTest < ApplicationSystemTestCase
  setup do
    @next = nexts(:one)
  end

  test "visiting the index" do
    visit nexts_url
    assert_selector "h1", text: "Nexts"
  end

  test "creating a Next" do
    visit nexts_url
    click_on "New Next"

    fill_in "Number", with: @next.number
    click_on "Create Next"

    assert_text "Next was successfully created"
    click_on "Back"
  end

  test "updating a Next" do
    visit nexts_url
    click_on "Edit", match: :first

    fill_in "Number", with: @next.number
    click_on "Update Next"

    assert_text "Next was successfully updated"
    click_on "Back"
  end

  test "destroying a Next" do
    visit nexts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Next was successfully destroyed"
  end
end
