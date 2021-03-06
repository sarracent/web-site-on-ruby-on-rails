class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :body
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
