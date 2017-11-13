step ':textをクリックする' do |text|
  click_on text
end

step '新規投稿を入力する' do
  fill_in "title", with: "title"
  fill_in "content", with: "content"
end
