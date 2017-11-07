class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    binding.pry
      unless user
        user = User.create(
          uid:      auth.uid,
          provider: auth.provider,
          email:    auth.extra.raw_info.email,
          password: Devise.friendly_token[0, 20],
          gender: auth.extra.raw_info.gender
          )
      end
    user
  end

  #   private
  #
  # def self.dummy_email(auth)
  #   "#{auth.uid}-#{auth.provider}@example.com"
  # end
end
