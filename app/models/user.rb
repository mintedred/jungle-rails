class User < ActiveRecord::Base  
  validates :name, presence: true, :uniqueness => true
  validates :email, presence: true, :uniqueness => true
  validates_confirmation_of :password
  has_secure_password
end