class MerchantsController < ApplicationController
	def index
		@products = Product.where(sold: false)
	end

end
