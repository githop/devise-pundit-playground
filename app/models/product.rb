class Product < ActiveRecord::Base
  belongs_to :merchant
  has_many :orders
  has_many :sales, through: :orders, source: :merchant
end
