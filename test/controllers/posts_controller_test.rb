require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  fixtures :posts
  
  test "should get index" do
    get root_path
    assert_response :success
  end

end
