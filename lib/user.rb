class User < ActiveRecord::Base
  has_many :spaces
  has_many :requests
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  has_secure_password
end