class OrdersController < ApplicationController
before_filter :authenticate_merchant!

	def index
		@merchant = Merchant.find(params[:merchant_id])
		authorize Merchant 
	end

	def show
	end

	def current_user
		self.current_merchant
	end
end
