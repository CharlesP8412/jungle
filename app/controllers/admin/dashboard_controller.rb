class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PASS']

  def show
  # @categorie_count = Categorie.count
  @dashboard_data = {
    catagories: Category.count,
    products: Product.count,  
    orders: Order.count,
    avg_sale: Order.average('total_cents'),
    total_sales: Order.sum('total_cents')
  }
  # @total_sales = Order.sum(total_cents)
  end
end
