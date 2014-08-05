require 'rspec'
require_relative 'pizza'

describe Pizza do
  describe 'attributes' do
    before do
      @pizza = Pizza.new("pepperoni")
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
      end
    end

    context '#time_baked' do
      it 'should have a time_baked' do
        expect(@pizza.time_baked).to be_a Integer
      end
    end
  end

  describe '#initialize' do
    context '#name' do
      it 'should have a default name if no name is given' do
        pizza = Pizza.new
        expect(pizza.name).to eq("DefaultPizza")
      end
    end
    context '#time_baked' do
      it 'should default to 0' do
        pizza = Pizza.new(name: "pepperoni")
        expect(pizza.time_baked).to eq(0)
      end

    end
  end

end
