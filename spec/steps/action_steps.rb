step ':textをクリックする' do |text|
  click_on text
end

step ':formに:textを入力する' do |form, text|
  fill_in form, with: text
end

step ':buttonを選択する' do |button|
  choose button
end
