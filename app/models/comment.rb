class Comment < ApplicationRecord
  belongs_to :post
  validates :author, presence: true
  validates :comment, presence: true

  validate :comment_id_not_changed
  validate :created_at_not_changed


  def comment_id_not_changed
    if comment_id_not_changed? && self.persisted?
      errors.add(:comment_id, "Change of Comment ID is not allowed!")
    end
  end

  def created_at_not_changed
    if post_id_not_changed? && self.persisted?
      errors.add(:comment_created_at, "Change of Comment creation date is not allowed!")
    end
  end
end
