class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount_required)
    @ingredients_required[ingredient] += amount_required
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum do |ingredient, amount|
      ingredient.calories * amount
    end
  end

  def ingredients_by_calorie
    @ingredients_required.sort_by do |ingredient, amount|
      ingredient.calories * amount
    end.reverse
  end

  def summarize_ingredients_by_calorie
    ingredients_by_calorie.map do |ingredient|
      {ingredient: ingredient.first.name,
      amount: ingredient.last.to_s + " " + ingredient.first.unit}
    end
  end



end
