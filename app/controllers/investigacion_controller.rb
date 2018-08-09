class InvestigacionController < ApplicationController
  def index
  	@pages = Page.all
  	@page = @pages.third
    @category_second = Category.second
    @posts_category_second = @category_second.posts.limit(2).order("created_at desc")
    @post_first_category_second = @posts_category_second.first
    @post_second_category_second = @posts_category_second.second
  end
end
