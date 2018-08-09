class MainController < ApplicationController

  def search
    @products = Product.ransack(name_cont: params[:q]).result(distinct: true)
    @posts = Post.ransack(title_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
        @products = @products.limit(2)
        @posts = @posts.limit(2)
      }
    end
  end
end
