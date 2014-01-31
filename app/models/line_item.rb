class LineItem < ActiveRecord::Base
  attr_accessible :id, :cart_id, :product_id
  attr_protected
  belongs_to :product
  belongs_to :cart

  def total_price
	product.price * quantity
  end


end
