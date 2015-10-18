class Comment < ActiveRecord::Base
  validates :body, length: { in: 1..255 }
  
  belongs_to :post
  belongs_to :user
end
