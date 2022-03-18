require 'test_helper'

class NextQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @next_question = next_questions(:one)
  end

  test "should get index" do
    get next_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_next_question_url
    assert_response :success
  end

  test "should create next_question" do
    assert_difference('NextQuestion.count') do
      post next_questions_url, params: { next_question: { number: @next_question.number } }
    end

    assert_redirected_to next_question_url(NextQuestion.last)
  end

  test "should show next_question" do
    get next_question_url(@next_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_next_question_url(@next_question)
    assert_response :success
  end

  test "should update next_question" do
    patch next_question_url(@next_question), params: { next_question: { number: @next_question.number } }
    assert_redirected_to next_question_url(@next_question)
  end

  test "should destroy next_question" do
    assert_difference('NextQuestion.count', -1) do
      delete next_question_url(@next_question)
    end

    assert_redirected_to next_questions_url
  end
end
