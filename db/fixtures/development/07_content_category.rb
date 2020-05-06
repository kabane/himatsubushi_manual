ContentCategory.seed(
  {
    content_id: Content.find_by(title: 'Fire TV Stick').id,
    category_id: Category.find_by(name: '商品').id
  },
  {
    content_id: Content.find_by(title: 'ジョブ理論').id,
    category_id: Category.find_by(name: '書籍').id
  },
  {
    content_id: Content.find_by(title: 'ソーシャンクの空に').id,
    category_id: Category.find_by(name: '映像').id
  },
  {
    content_id: Content.find_by(title: '質疑応答〜コロナ経済後に必要な能力とは').id,
    category_id: Category.find_by(name: '動画').id
  },
  {
    content_id: Content.find_by(title: 'Echo Show 5').id,
    category_id: Category.find_by(name: '商品').id
  }
)
