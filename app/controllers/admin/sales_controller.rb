class Admin::SalesController < ApplicationController

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PASS']

  def index
    @sales = Sale.all
  end

  def new
  end

  def delete

  end
end
