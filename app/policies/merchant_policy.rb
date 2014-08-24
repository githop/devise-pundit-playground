class MerchantPolicy
	attr_reader :current_merchant, :order

	def initialize(current_merchant, order)
		@current_merchant = current_merchant 
		@order  = order
	end

	def index?
		@current_merchant.admin? || current_merchant.owner_of?(order)
	end

	def show?
		@current_merchant.admin? || @current_merchant ==@order  
	end

	def update?
		@current_merchant.admin? 
	end

	def destroy?
		return false if @current_merchant ==@order  
		@current_merchant.admin?
	end

end