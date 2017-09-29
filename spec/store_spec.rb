require 'spec_helper'

describe(Store) do
  it("validates presence of name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  # it("validates presence of instructions") do
  #   recipe = Recipe.new({:instructions => ""})
  #   expect(recipe.save()).to(eq(false))
  # end
  #
  # it("ensures the length of title is at most 50 characters") do
  #   recipe = Recipe.new({:title => "a".*(51)})
  #   expect(recipe.save()).to(eq(false))
  # end
  #
  # it("converts the first letter of the recipe title to uppercase") do
  #   recipe = Recipe.new({:title => "pumpkin soup", :instructions => "cook"})
  #   recipe.save
  #   expect(recipe.title()).to(eq("Pumpkin Soup"))
  # end
end
