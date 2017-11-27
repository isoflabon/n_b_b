step ':commentというコメントがある' do |name|
  create(:reply, :comment_id, content: name)
end
