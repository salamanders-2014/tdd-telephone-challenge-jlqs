require 'rspec'
require_relative 'pizza'
require_relative 'topping'

describe Pizza do
  describe 'attributes' do
    before do
      @pizza = Pizza.new(name: "pepperoni", description: '15in. pizza', time_baked: 0)
    end

    context '#name' do
      context '#name' do
        it 'should have a name' do
          expect(@pizza.name).to be_a String
          expect(@pizza.name).to eq("pepperoni")
        end
      end
    end

    context '#description' do
      it 'should have a description' do
        expect(@pizza.description).to be_a String
        expect(@pizza.description).to eq('15in. pizza')
      end
    end

    context '#time_baked' do
      it 'should have a time_baked' do
        expect(@pizza.time_baked).to be_a Integer
        expect(@pizza.time_baked).to eq(0)
      end
    end
  end

  describe '#initialize' do
    context '#name' do
      it 'should have a default name if no name is given' do
        pizza = Pizza.new
        expect{pizza.name}.to raise_error
      end
    end
    context '#time_baked' do
      it 'should default to 0' do
        pizza = Pizza.new(name: "pepperoni")
        expect(pizza.time_baked).to eq(0)
      end
    end
  end

  describe '#toppings' do
    before do
      @pizza = Pizza.new(name: "pepperoni")
      topping = Topping.new(name: "Cheese", required_bake_time: 5, time_baked: 10)
    end
    it 'should return an array of toppings' do
      expect(@pizza.toppings).to be_a Array
      expect(@pizza.toppings[0]).to be_a Topping
    end
  end

  describe '#required_bake_time' do

    it 'should return the sum of 900 plus max bake time of all toppings' do
      pizza = Pizza.new(name: "pepperoni")
      expect(pizza.require_bake_time).to be_a Integer
      expect(pizza.require_bake_time).to eq(900)
    end
  end

end

describe Topping do
  describe 'attributes' do

    before do
      @topping = Topping.new(name: "cheese", required_bake_time: 2, time_baked:0 )
    end

    context '#name' do
      it 'should have a name' do
        expect(@topping.name).to be_a String
        expect(@topping.name).to eq("cheese")
      end
    end

    context '#required_bake_time' do
      it 'should have a required_bake_time' do
        expect(@topping.required_bake_time).to be_a Integer
        expect(@topping.required_bake_time).to eq(2)
      end
    end

    context '#time_baked' do
      it 'should have a time_baked' do
        expect(@topping.time_baked).to be_a Integer
        expect(@topping.time_baked).to eq(0)
      end
    end
  end

end


