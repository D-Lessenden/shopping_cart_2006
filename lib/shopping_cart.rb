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

  def total_number_of_products
    # total = []
    # @product.each do |x|
    # end
  #  @product1.quantity
  #  @quantity
    #@product.add_product(product1)
  #  @product.length
    #@product[0].capacity
    @sums = []
    @product.each do |x|
      #require 'pry'; binding.pry
      @sums << x.quantity
    end
#p sums
  @sums.sum


  end

  def is_full?
    @sums.sum >= 30
  end

  def products_by_category(type)
    new_cat = @product.select do |x|
          x.category == type
    end
  end



    # @product.select do |type|
    #   type == ":paper"
    # end


    # [@product[0], @product[2]]
    # cats = []
    # @product.each do |cat|
    #   require 'pry'; binding.pry
    #   cats << cat.category == :paper



end
