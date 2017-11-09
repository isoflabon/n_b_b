require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  fixtures :posts, :users
  # rootへとぶことができる
  test "should get root_path" do
    get root_path
    assert_response :success
  end

  # 詳細ページを見る
  test "should get show" do
    @post = Post.find_by(id: 1)
    get "/posts/#{@post.id}"
    assert_response :success
  end

  test "should get new" do
    get new_post_path
    assert_redirected_to("/users/sign_in")
  end


end
