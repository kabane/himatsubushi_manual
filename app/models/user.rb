class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :auth
  has_many :contents

  def self.find_or_create_for_auth!(auth)
    user = find_by(provider: auth.provider, uid: auth.uid)

    return user if user.present?

    password = Devise.friendly_token[0, 20]

    User.create!(
      provider: auth.provider,
      uid: auth.uid,
      email: auth.info.email || "#{SecureRandom.hex}@example.com",
      password: password,
      password_confirmation: password
    )
  end

end
