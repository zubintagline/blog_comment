class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.text :description
      t.attachment :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
