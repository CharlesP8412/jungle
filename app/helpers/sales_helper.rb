module SalesHelper

  def active_sale
    # Sales.active
    puts '==============TEST===================='
    @test = Sale.where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current ).first
    @test
  end

  # def current_sale_name
  #   Sale.current.name
  # end

end