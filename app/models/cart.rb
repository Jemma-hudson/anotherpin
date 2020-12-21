class Cart < ApplicationRecord
  has_many :order_items

  def total_quanity
    @count = 0

    order_items.all.each do |item|
      @count = @count + item.quantity
    end

    @count
  end




  def total_price_in_dollars
    @total = 0
    order_items.all.each do |item|
      @total = @total + item.product.price_in_dollars * item.quantity
    end
    @total
  end


end
