class AicaController < ApplicationController
  def index
  	@pages = Page.all
  	@page = @pages.second
  end
end
