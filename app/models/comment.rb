class Comment < ApplicationRecord
  belongs_to :post
  validates :author, presence: true
  validates :comment, presence: true

  

  attr_readonly :id
  attr_readonly :created_at

end
