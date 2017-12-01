class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    email_register = auth.extra.raw_info.email ? auth.extra.raw_info.email : User.dummy_email(auth)
      unless user
        user = User.create(
          uid:      auth.uid,
          provider: auth.provider,
          email:    email_register,
          password: Devise.friendly_token[0, 20],
          gender:   auth.extra.raw_info.gender,
          notice:   true
          )
      end
    user
  end

  private
  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
