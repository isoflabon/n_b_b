step ':nameという男性ユーザーがいる' do |name|
  create(:user, :male, username: name)
end

step ':nameという女性ユーザーがいる' do |name|
  create(:user, :female, username: name)
end

step ':nameでログインする' do |name|
  sign_in User.find_by(username: name)
end
