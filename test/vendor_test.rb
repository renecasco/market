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

    assert_equal Hash.new , vendor.inventory
  end

  def
    
  end

end
