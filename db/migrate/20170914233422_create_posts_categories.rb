class CreatePostsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_posts, :id => false do |t|
    	t.references :category
      	t.references :post
    end
  end
end
