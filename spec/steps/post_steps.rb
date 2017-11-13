step ':postという投稿がある' do |name|
  create(:post, content: name)
end
