require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  fixtures :posts, :users

  test "rootへとぶことができる" do
    get root_path
    assert_response :success
  end

  test "詳細ページを見る" do
    @post = Post.find_by(id: 1)
    get "/posts/#{@post.id}"
    assert_response :success
  end

  test "新規投稿にとばずリダイレクトされる" do
    get new_post_path
    assert_redirected_to("/users/sign_in")
  end


end
