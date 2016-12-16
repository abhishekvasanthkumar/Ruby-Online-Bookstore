class ShopperController < ApplicationController
	include CurrentCart
	skip_before_action :authorize 
	before_action :set_cart

  def index
  	if params[:search]
  		hahaha = "%"+params[:search]+"%"
  		@products = Product.where("name like ?", hahaha).order(:name)
  	else
  		@products = Product.order(:name)
		end
  end

end
