require "test_helper"

class CocktailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cocktails_new_url
    assert_response :success
  end
end
