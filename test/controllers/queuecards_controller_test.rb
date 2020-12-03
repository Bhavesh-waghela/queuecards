require 'test_helper'

class QueuecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @queuecard = queuecards(:one)
  end

  test "should get index" do
    get queuecards_url, as: :json
    assert_response :success
  end

  test "should create queuecard" do
    assert_difference('Queuecard.count') do
      post queuecards_url, params: { queuecard: { answer: @queuecard.answer, question: @queuecard.question, user_id: @queuecard.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show queuecard" do
    get queuecard_url(@queuecard), as: :json
    assert_response :success
  end

  test "should update queuecard" do
    patch queuecard_url(@queuecard), params: { queuecard: { answer: @queuecard.answer, question: @queuecard.question, user_id: @queuecard.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy queuecard" do
    assert_difference('Queuecard.count', -1) do
      delete queuecard_url(@queuecard), as: :json
    end

    assert_response 204
  end
end
