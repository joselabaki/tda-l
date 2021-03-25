require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get cocktails" do
    get pages_cocktails_url
    assert_response :success
  end

  test "should get stories" do
    get pages_stories_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get shop" do
    get pages_shop_url
    assert_response :success
  end
end
