require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:paul) { Chef.new("Paul")}
  subject(:ice_cream) { Dessert.new("ice cream", 5, paul)}
  


  describe "#initialize" do
    it "sets a type" do
      expect(ice_cream.type).to eq("ice cream")
    end

    it "sets a quantity" do 
      expect(ice_cream.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(ice_cream.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("ice cream", "one", paul) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(ice_cream.ingredients).to_not include("sprinkles")
      ice_cream.add_ingredient("sprinkles")
      expect(ice_cream.ingredients).to include("sprinkles")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ice_cream.add_ingredient("sprinkles")
      ice_cream.add_ingredient("chocolate chips")
      ice_cream.add_ingredient("cherry")
      expect(ice_cream.ingredients).to include("sprinkles", "chocolate chips", "cherry")
      expect(ice_cream.ingredients.length).to eq(3)
      ice_cream.mix!
      expect(ice_cream.ingredients).to include("sprinkles", "chocolate chips", "cherry")
      expect(ice_cream.ingredients.length).to eq(3)
    end
  end

  describe "#eat" do

  before(:each) { ice_cream.eat(3)}

    it "subtracts an amount from the quantity" do 
      expect(ice_cream.quantity).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect {ice_cream.eat(3)}.to raise_error('not enough left!') #already ate 3, so only 2 left beforehand
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(ice_cream.serve).to include(paul.name.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(ice_cream.make_more).to eq(paul.bake(ice_cream))
    end
  end
end
