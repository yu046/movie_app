require "test_helper"

class MusicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_index_url
    assert_response :success
  end

  test "should get edit" do
    get music_edit_url
    assert_response :success
  end

  test "should get new" do
    get music_new_url
    assert_response :success
  end
end
