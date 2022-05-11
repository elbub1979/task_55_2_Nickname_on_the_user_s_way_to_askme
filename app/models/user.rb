class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, :nickname, presence: true, uniqueness: true

  has_many :questions, dependent: :delete_all

  include Gravtastic
  gravtastic(secure: true, filetype: :png, size: 100, default: 'retro')

  def to_param
    nickname
  end

  def downcase_nickname
    nickname.downcase!
  end
end
