class ShoppingCart
attr_reader :name
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @product = []
  end

  def capacity
    @capacity[/\d+/].to_i
  end

  def product
    @product
  end

  def add_product(item)
    @product << item
  end

  def details
    details = {}
    details[:name] = "#{@name}"
    details[:capacity] = @capacity[/\d+/].to_i 
    p details


  end

end
