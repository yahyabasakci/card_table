class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates :password, presence: true
#  validates :password, presence: true, length: {minimum: 6}

end
