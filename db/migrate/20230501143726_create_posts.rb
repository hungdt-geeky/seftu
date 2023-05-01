class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.integer :view_count, default: 0
      t.datetime :published_at

      t.timestamps
    end
  end
end
