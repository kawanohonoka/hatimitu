require "test_helper"

class ResordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resord = resords(:one)
  end

  test "should get index" do
    get resords_url, as: :json
    assert_response :success
  end

  test "should create resord" do
    assert_difference("Resord.count") do
      post resords_url, params: { resord: { body: @resord.body, level: @resord.level, title: @resord.title } }, as: :json
    end

    assert_response :created
  end

  test "should show resord" do
    get resord_url(@resord), as: :json
    assert_response :success
  end

  test "should update resord" do
    patch resord_url(@resord), params: { resord: { body: @resord.body, level: @resord.level, title: @resord.title } }, as: :json
    assert_response :success
  end

  test "should destroy resord" do
    assert_difference("Resord.count", -1) do
      delete resord_url(@resord), as: :json
    end

    assert_response :no_content
  end
end
