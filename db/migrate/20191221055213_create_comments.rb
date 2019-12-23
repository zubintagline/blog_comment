class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :blog_post, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content
      t.integer :parent_id

      t.timestamps
    end
  end
end
