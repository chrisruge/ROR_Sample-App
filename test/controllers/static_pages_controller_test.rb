require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should pull root" do
    get '/'
    assert_response :success
    assert_select "title", "RoR Sample App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "RoR Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | RoR Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | RoR Sample App"
  end

  test "should get contacts" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | RoR Sample App"
  end

end
