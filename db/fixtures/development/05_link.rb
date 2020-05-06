Link.seed(
  {
    content_id: Content.find_by(title: 'Fire TV Stick').id,
    name: 'Amazonリンク',
    url: 'https://amzn.to/2WvublR'
  },
  {
    content_id: Content.find_by(title: 'ジョブ理論').id,
    name: '購入リンク',
    url: 'https://amzn.to/3beybNf'
  },
  {
    content_id: Content.find_by(title: 'ソーシャンクの空に').id,
    name: 'U-NEXT',
    url: 'https://bit.ly/3b6PLCF'
  },
  {
    content_id: Content.find_by(title: 'ソーシャンクの空に').id,
    name: 'Yahooリンク',
    url: 'https://movies.yahoo.co.jp/movie/10909/'
  },
  {
    content_id: Content.find_by(title: '質疑応答〜コロナ経済後に必要な能力とは').id,
    name: '視聴リンク',
    url: 'https://www.youtube.com/watch?v=JEt8c3ZQ6hM'
  },
  {
    content_id: Content.find_by(title: 'Echo Show 5').id,
    name: 'ロボスタ',
    url: 'https://robotstart.info/2020/05/03/202005-echo-sale.html'
  }
)
