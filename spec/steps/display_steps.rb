step ':textが表示されている' do |text|
  expect(page).to have_text text
end

step ':textが表示されていない' do |text|
  expect(page).to_not have_text text
end
