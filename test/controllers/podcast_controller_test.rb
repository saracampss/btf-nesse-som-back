require 'test_helper'

class PodcastControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get podcast_index_url
    assert_response :success
  end

  test "should get show" do
    get podcast_show_url
    assert_response :success
  end

  test "should get destroy" do
    get podcast_destroy_url
    assert_response :success
  end

end
