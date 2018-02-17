require 'test_helper'

class ComparisonsControllerTest < ActionDispatch::IntegrationTest
  test "should get compare" do
    get comparisons_compare_url
    assert_response :success
  end

end
