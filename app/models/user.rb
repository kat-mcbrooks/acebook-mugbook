class User < ApplicationRecord
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
=======

  has_secure_password
  validates :username, presence: true, length: {maximum: 20}
  validates :name, presence: true, length: {maximum: 20}
  validates :email, :email_format => { :message => 'That\'s not an email!' },
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates :password, presence: true, length: { minimum: 7, message: 'Password cannot be less than 7 characters!' }
>>>>>>> b1773ecbb82c54796a184e11062d65ad401a5ae0
end
