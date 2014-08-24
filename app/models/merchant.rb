class Merchant < ActiveRecord::Base
  has_many :products
	has_many :orders
	has_many :purchases, through: :orders, source: :product
	has_many :sales, through: :products, source: :orders

  enum role: [:merchant, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :merchant
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
