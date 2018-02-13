require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get apply" do
    get applications_apply_url
    assert_response :success
  end

end
