require 'test_helper'

class NextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @next = nexts(:one)
  end

  test "should get index" do
    get nexts_url
    assert_response :success
  end

  test "should get new" do
    get new_next_url
    assert_response :success
  end

  test "should create next" do
    assert_difference('Next.count') do
      post nexts_url, params: { next: { number: @next.number } }
    end

    assert_redirected_to next_url(Next.last)
  end

  test "should show next" do
    get next_url(@next)
    assert_response :success
  end

  test "should get edit" do
    get edit_next_url(@next)
    assert_response :success
  end

  test "should update next" do
    patch next_url(@next), params: { next: { number: @next.number } }
    assert_redirected_to next_url(@next)
  end

  test "should destroy next" do
    assert_difference('Next.count', -1) do
      delete next_url(@next)
    end

    assert_redirected_to nexts_url
  end
end
