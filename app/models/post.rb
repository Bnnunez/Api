class Post < ApplicationRecord

	attr_readonly :id
  attr_readonly :created_at

  validates :title, presence: true
  validates :body, presence: true

	has_many :comments, :dependent => :destroy


	def  as_json(options={})
		ops={:only => [:id, :title, :subtitle, :body, :created_at]}
		super(options.merge(ops))
	end

end
