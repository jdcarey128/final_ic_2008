require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < Minitest::Test

  def test_it_exists_and_has_attributes
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
    assert_equal [], cookbook.recipes
  end

  def test_it_can_add_recipes
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    assert_equal [recipe1, recipe2], cookbook.recipes
  end

end
