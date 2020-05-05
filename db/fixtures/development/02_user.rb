User.seed(
  {
    last_name: '徳川',
    first_name: '家康',
    tel: '09011112222',
    birthday: Date.today.ago(20.year),
    gender: :male,
  },
  {
    last_name: '織田',
    first_name: '信長',
    tel: '09011112222',
    birthday: Date.today.ago(25.year),
    gender: :male,
  },
  {
    last_name: '豊臣',
    first_name: '秀子',
    tel: '09033334445',
    birthday: Date.today.ago(30.year),
    gender: :female,
  }
)
