class BlogPost < ApplicationRecord
  belongs_to :user
  has_many :comments, -> { where parent_id: nil }, dependent: :destroy
  has_attached_file :picture
  validates_attachment :picture,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
