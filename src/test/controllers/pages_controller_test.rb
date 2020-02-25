require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get instruments" do
    get pages_instruments_url
    assert_response :success
  end

  test "should get lessons" do
    get pages_lessons_url
    assert_response :success
  end

  test "should get formaGroup" do
    get pages_formaGroup_url
    assert_response :success
  end

end
