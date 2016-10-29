class PagesController < ApplicationController
  def index
  	@items = Item.all
  	@users = User.all
  	@categories = Category.all
  end

  def about
  	item = Item.find params[:id]
  	item.destroy

  	redirect_to pages_index_path
  end
end
