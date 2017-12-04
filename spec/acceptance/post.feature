# language: ja
フィーチャ: 性別によって投稿できる、できないことが制限されている

  背景:
    前提 'maleuser'という男性ユーザーがいる
    かつ 'femaleuser'という女性ユーザーがいる


  シナリオ: ログインしていないユーザーは新規投稿できない
    もし  トップページを表示する
    ならば  '悩みを相談する'が表示されていない

  シナリオ: 男性は新規投稿できる
    もし  'maleuser'でログインする
    かつ  トップページを表示する
  
    かつ  '悩みを相談する'が表示されている
    かつ  '悩みを相談する'をクリックする
    かつ  '悩みを投稿する'が表示されている
    かつ  'title'に'悩みがあります'を入力する
    かつ  'content'に'想いが伝わりません'を入力する
    かつ  '投稿'をクリックする
    ならば '悩みがあります'が表示されている
    かつ  '想いが伝わりません'が表示されている

  シナリオ: 女性は新規投稿できない
    もし    'femaleuser'でログインする
    かつ    トップページを表示する
    ならば  '悩みを相談する'が表示されていない
