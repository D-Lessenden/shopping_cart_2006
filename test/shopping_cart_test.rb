require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test

  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists
    assert_instance_of ShoppingCart, @cart
  end

  def test_it_has_a_name
    assert_equal "King Soopers", @cart.name
  end

  def test_capacity
    assert_equal 30, @cart.capacity
  end

  def test_products_array_empty
    assert_equal [], @cart.product
  end

  def test_add_product
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    @cart.add_product(product1)
    @cart.add_product(product2)

    assert_equal [product1, product2], @cart.product
  end

  def test_cart_details
    #skip
    assert_equal ({name: "King Soopers", capacity: 30}), @cart.details
  end
end
