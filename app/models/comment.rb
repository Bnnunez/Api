class Comment < ApplicationRecord
  belongs_to :post
  validates :author, presence: true
  validates :comment, presence: true



  attr_readonly :id
  attr_readonly :created_at

  def  as_json(options={})
		ops={:only => [:id, :author, :comment, :created_at]}
		super(options.merge(ops))
	end
end
