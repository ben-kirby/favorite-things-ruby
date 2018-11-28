require 'rspec'
require 'pry'
require 'favorites'

describe("Item") do
  describe(".all") do
    it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Item.new("tacos")
      item.save()
      expect(Item.all()).to(eq([item]))
    end
  end

  describe(".clear") do
  it("clears all items from the list") do
    item = Item.new("tacos")
    item.save()
    Item.clear()
    expect(Item.all()).to(eq([]))
  end
end

describe(".find") do
    it("finds an item based on its id") do
      item = Item.new("tacos")
      item.save()
      item2 = Item.new("pizza")
      item2.save()
      expect(Item.find(1)).to(eq(item))
      expect(Item.find(2)).to(eq(item2))
    end
  end
end
