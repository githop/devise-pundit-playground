class ProductsController < ApplicationController
	def index
		@merchant = Merchant.find(params[:merchant_id])
	end

	def show
		@product = Product.find(params[:id])	
	end
end
