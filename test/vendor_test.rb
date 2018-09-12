require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require 'pry'

class VendorTest < Minitest::Test

  def test_instance_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_it_has_name
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
  end


  def test_inventory_is_initialized_as_empty_hash
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal Hash.new, vendor.inventory
  end

  def test_it_checks_stock_within_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal 0, vendor.check_stock("Peaches")
  end

  def test_it_adds_stock_to_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)

    assert_equal 30, vendor.check_stock("Peaches")
  end

  def test_it_stocks_more_items_in_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)
    vendor.stock("Peaches", 25)
    vendor.stock("Tomatoes", 12)

    assert_equal 55, vendor.check_stock("Peaches")

    expected = {"Peaches"=>55, "Tomatoes"=>12}
    assert_equal expected , vendor.inventory
  end

end
