require "application_system_test_case"

class NextQuestionsTest < ApplicationSystemTestCase
  setup do
    @next_question = next_questions(:one)
  end

  test "visiting the index" do
    visit next_questions_url
    assert_selector "h1", text: "Next Questions"
  end

  test "creating a Next question" do
    visit next_questions_url
    click_on "New Next Question"

    fill_in "Number", with: @next_question.number
    click_on "Create Next question"

    assert_text "Next question was successfully created"
    click_on "Back"
  end

  test "updating a Next question" do
    visit next_questions_url
    click_on "Edit", match: :first

    fill_in "Number", with: @next_question.number
    click_on "Update Next question"

    assert_text "Next question was successfully updated"
    click_on "Back"
  end

  test "destroying a Next question" do
    visit next_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Next question was successfully destroyed"
  end
end
