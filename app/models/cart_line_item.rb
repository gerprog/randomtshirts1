class CartLineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :shape
  belongs_to :cart
  attr_accessible :cart_id, :shape_id

  def total_price
    shape.price * quantity
  end

  def decrement_quantity(cart_line_item_id)
    current_item = CartLineItem.find_by_id(cart_line_item_id)

    if current_item.quantity > 1
      current_item.quantity -= 1
    else
      current_item.destroy
    end

    current_item
  end

end
