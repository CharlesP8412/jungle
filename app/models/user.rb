class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  before_save :format_email

  def format_email
    self.email = email.strip # Remove White space and RegEx
    email.downcase! # Make lowercase
  end
end
