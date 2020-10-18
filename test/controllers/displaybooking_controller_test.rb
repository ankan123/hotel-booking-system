require 'test_helper'

class DisplaybookingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get displaybooking_index_url
    assert_response :success
  end

end
