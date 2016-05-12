class Sandwich < ActiveRecord::Base
  has_many :sandwich_ingredients
  has_many :ingredients, through: :sandwich_ingredients

  def as_json(options={})
    super(only: [:id, :name, :bread_type, :total_calories],
      include: [ingredients: {only: [:id, :name, :calories]}])
  end

  def add_calories(ingredient)
    calories = self.total_calories + ingredient.calories
    self.update(total_calories: calories)
  end
end
