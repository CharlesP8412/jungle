module SalesHelper

  def active_sale
    Sale.active_sale
    # Sale.where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current ).first
  end
  
end