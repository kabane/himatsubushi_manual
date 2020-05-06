Content.seed(
  :title,
  {
    user_id: User.find(1).id,
    title: 'Fire TV Stick',
    description: 'おすすめ'
  },
  {
    user_id: User.find(1).id,
    title: 'ジョブ理論',
    description: 'おすすめ'
  },
  {
    user_id: User.find(1).id,
    title: 'ソーシャンクの空に',
    description: 'おすすめ'
  },
  {
    user_id: User.find(2).id,
    title: '質疑応答〜コロナ経済後に必要な能力とは',
    description: 'おすすめ'
  },
  {
    user_id: User.find(2).id,
    title: 'Echo Show 5',
    description: 'おすすめ'
  }
)
