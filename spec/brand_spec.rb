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

  it 'validates uniqueness of name' do
    brand = Brand.new({name: "Sue"})
    brand.save
    brand2 = Brand.new({name: "Sue"})
    expect(brand2.save).to eq false
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

  it("prevents save if name input is 'clodhopper'") do
    brand = Brand.new({:name => "clodhopper"})
    expect(brand.save).to eq false
  end

  it("prevents save if name input is 'lout'") do
    brand = Brand.new({:name => "lout"})
    expect(brand.save).to eq false
  end

  it("prevents save if name input is 'curmudgeon'") do
    brand = Brand.new({:name => "curmudgeon"})
    expect(brand.save).to eq false
  end

  it("only allows user to input an integer for price field for brands'") do
    brand = Brand.new({:price => "ten"})
    expect(brand.save).to eq false
  end
end
