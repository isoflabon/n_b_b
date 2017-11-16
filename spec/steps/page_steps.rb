step 'トップページを表示する' do
  visit root_path
end

step '投稿詳細ページを表示する' do
  visit "/posts/1"
end
