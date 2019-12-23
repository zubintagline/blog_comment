class Comment < ApplicationRecord
  belongs_to :blog_post
  belongs_to :user
  has_many :reply_comments, foreign_key: 'parent_id',class_name: 'Comment', dependent: :destroy


  def parent
    if self.parent_id.nil?
      nil
    else
      obj = Comment.find(self.parent_id)
      obj = Comment.find(obj.parent_id) if obj.parent_id.present?
      return obj
    end
  end


end
