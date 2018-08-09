class SearchesController < ApplicationController
  
  def create
    @search = Search.create!(allowed_params)
    redirect_to @search
  end

  def update
    @search = Search.create!(allowed_params)
    redirect_to @search
  end
  
  def show
    @search = Search.new
    @search = Search.find(params[:id])
  end
  
  private
  
  def allowed_params
    params.require(:search).permit!
  end
end
