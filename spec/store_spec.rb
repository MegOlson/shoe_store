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

  it 'validates uniqueness of name' do
    store = Store.new({name: "Sue"})
    store.save
    store2 = Store.new({name: "Sue"})
    expect(store2.save).to eq false
  end

  it("converts the first letter of the store name to uppercase") do
    store = Store.new({:name => "under armour"})
    store.save
    expect(store.name()).to(eq("Under Armour"))
  end

  it("prevents save if name input is 'clodhopper'") do
    store = Store.new({:name => "clodhopper"})
    expect(store.save).to eq false
  end

  it("prevents save if name input is 'lout'") do
    store = Store.new({:name => "lout"})
    expect(store.save).to eq false
  end

  it("prevents save if name input is 'curmudgeon'") do
    store = Store.new({:name => "curmudgeon"})
    expect(store.save).to eq false
  end
end
