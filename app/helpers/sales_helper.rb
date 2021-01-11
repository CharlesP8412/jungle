module SalesHelper

  def active_sale
    Sale.active_sale
  end
  
  def apply_savings(order_total)
    puts Sale.active_sale.percent_off
    order_total * Sale.active_sale.percent_off/100
  end

end