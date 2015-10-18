class Post < ActiveRecord::Base
  validates :title, length: { in: 2..50 }
  validates :link, length: { maximum: 100 }
  validates :imagelink, length: { maximum: 150 }
  
  belongs_to :user
  has_many :comments
end
