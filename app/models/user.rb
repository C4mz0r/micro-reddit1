class User < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 6..16 }
  
  has_many :posts
  has_many :comments #, :through => :posts
end
