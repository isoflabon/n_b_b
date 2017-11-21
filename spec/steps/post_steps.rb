step ':postという投稿がある' do |name|
  create(:post, content: name)
end

step ':postという太郎の投稿がある' do |name|
  create(:post, :toukou_id, content: name)
end
