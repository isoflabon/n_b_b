step ':nameという男性ユーザーがいる' do |name|
  create(:user, :male, username: name)
end

step ':nameという女性ユーザーがいる' do |name|
  create(:user, :female, username: name)
end

step ':nameという悩みを投稿した男性ユーザーがいる' do |name|
  create(:user, :ypost, username: name)
end

step ':nameという悩みを投稿していない男性ユーザーがいる' do |name|
  create(:user, :npost, username: name)
end

step ':nameでログインする' do |name|
  sign_in User.find_by(username: name)
end

step ':nameでログアウトする' do |name|
  sign_out User.find_by(username: name)
end
