module CartsHelper

  def render_cart_total_price(cart)
    @sum = 0
    cart.cart_items.each do |cart_item|
      if cart_item.product.price.present?
        if session.include?(:user_info) and DateTime.now.to_date == session[:user_info][1].to_date and cart_item.product.id == session[:user_info][2]
          @discountSurprice = session[:user_info][3]
        else
          @discountSurprice = 1
        end
        @sum += cart_item.quantity*cart_item.product.price*@discountSurprice
      end
    end
    @sum
  end
end
