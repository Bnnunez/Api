class Post < ApplicationRecord

	attr_readonly :id
  attr_readonly :created_at

  validates :title, presence: true
  validates :body, presence: true

	has_many :comments, :dependent => :destroy


end
