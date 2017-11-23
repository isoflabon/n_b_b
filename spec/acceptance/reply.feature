# language: ja
フィーチャ: ユーザの性別で，コメントの返信が制限されている

  背景:
    前提  'taro'という男性ユーザーがいる
    かつ  'hanako'という女性ユーザーがいる
    かつ  'syoya'という男性ユーザーがいる
    かつ  'rika'という女性ユーザーがいる
    かつ  'taro'でログインする
    かつ  トップページを表示する
    かつ  '悩みを相談する'をクリックする
    かつ  'title'に'悩みがあります'を入力する
    かつ  'content'に'想いが伝わりません'を入力する
    かつ  '投稿'をクリックする
    かつ  'taro'でログアウトする
    かつ  'hanako'でログインする
    かつ  'もっと見る'をクリックする
    かつ  '想いが伝わりません'が表示されている
    かつ  'comment'に'語彙力をupさせましょう'を入力する
    かつ  'コメントする'をクリックする
    かつ  'コメント: 語彙力をupさせましょう'が表示されている
    かつ  'hanako'でログアウトする
    かつ  トップページを表示する

  シナリオ: 悩みを投稿した男性ユーザーはコメントに返信することができる
    もし  'taro'でログインする
    かつ  'もっと見る'をクリックする
    かつ  'コメント: 語彙力をupさせましょう'が表示されている
    かつ  'reply-content'に'そういうことですか・・'を入力する
    かつ  '返信する'をクリックする
    ならば 'そういうことですか・・'が表示されている

  シナリオ: コメントした女性ユーザーはそのコメントに返信することができる
    もし 'hanako'でログインする
    かつ  'もっと見る'をクリックする
    かつ  'コメント: 語彙力をupさせましょう'が表示されている
    かつ  'reply-content'に'本をたくさん読もう'を入力する
    かつ  '返信する'をクリックする
    ならば '本をたくさん読もう'が表示されている

  シナリオ: 悩みを投稿していない男性ユーザーはコメントに返信することができない
    もし 'syoya'でログインする
    かつ  'もっと見る'をクリックする
    かつ  'コメント: 語彙力をupさせましょう'が表示されている
    ならば '返信する'が表示されていない

  シナリオ: コメントしていない女性ユーザーはそのコメントに返信することができない
    もし 'rika'でログインする
    かつ  'もっと見る'をクリックする
    かつ  'コメント: 語彙力をupさせましょう'が表示されている
    ならば '返信する'が表示されていない
