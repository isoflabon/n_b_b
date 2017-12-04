# language: ja
フィーチャ: トップページからカテゴリー別で投稿ができ，一覧で確認ができる

  背景:
    前提  'maleuser'という男性ユーザーがいる
    かつ  'femaleuser'という女性ユーザーがいる
    もし  'maleuser'でログインする
    かつ  トップページを表示する
    かつ  '悩みを相談する'をクリックする
    かつ  'title'に'好きです'を入力する
    かつ  'content'に'って言いたい！'を入力する
    かつ  'post_category_onewaylove'を選択する
    かつ  '投稿'をクリックする
    かつ  'すべて'をクリックする
    かつ  'もっと見る'をクリックする
    かつ  'maleuser'でログアウトする

  シナリオ: 男性はカテゴリー別ページを見ることができる
    もし   'maleuser'でログインする
    かつ   トップページを表示する
    かつ   '片想い'をクリックする
    ならば '好きです'が表示されている
    かつ   'って言いたい！'が表示されている

  シナリオ: 女性はカテゴリー別ページを見ることができる
    もし   'femaleuser'でログインする
    かつ   トップページを表示する
    かつ   '片想い'をクリックする
    ならば '好きです'が表示されている
    かつ   'って言いたい！'が表示されている
