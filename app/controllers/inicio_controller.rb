class InicioController < ApplicationController
  def index
    @pages = Page.all
  	@page = @pages.first
    @image_first = Image.first
    @image_second = Image.second
    @image_third = Image.third
    @image_fourth = Image.fourth
    @image_fifth = Image.fifth
    @posts = Post.all.limit(2).order("created_at desc")
    @post_first = @posts.first
    @post_second = @posts.second
    @category_first = Category.first
    @posts_category_first = @category_first.posts.limit(5).order("created_at desc")
    @post_first_category_first = @posts_category_first.first
    @post_second_category_first = @posts_category_first.second
    @post_third_category_first= @posts_category_first.third
    @post_fourth_category_first = @posts_category_first.fourth
    @post_fifth_category_first= @posts_category_first.fifth
  end
end
