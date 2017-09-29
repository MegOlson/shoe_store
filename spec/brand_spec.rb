require 'spec_helper'

describe(Brand) do
  it("validates presence of name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("validates presence of price") do
    brand = Brand.new({:price => nil})
    expect(brand.save()).to(eq(false))
  end


  it("ensures the length of title is at most 100 characters") do
    brand = Brand.new({:name => "a".*(101)})
    expect(brand.save()).to(eq(false))
  end

  it("converts the first letter of the brand name to uppercase") do
    brand = Brand.new({:name => "under armour", :price => 80})
    brand.save
    expect(brand.name()).to(eq("Under Armour"))
  end
end
