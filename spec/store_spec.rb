require 'spec_helper'

describe(Store) do
  it("validates presence of name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  it("ensures the length of title is at most 100 characters") do
    store = Store.new({:name => "a".*(101)})
    expect(store.save()).to(eq(false))
  end
  #
  # it("converts the first letter of the recipe title to uppercase") do
  #   recipe = Recipe.new({:title => "pumpkin soup", :instructions => "cook"})
  #   recipe.save
  #   expect(recipe.title()).to(eq("Pumpkin Soup"))
  # end
end
