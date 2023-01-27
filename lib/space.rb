class Space < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  has_many :requests
end