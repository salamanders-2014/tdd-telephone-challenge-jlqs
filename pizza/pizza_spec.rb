require 'rspec'
require_relative 'pizza'

describe Pizza do
  describe 'attributes' do
    before do
      @pizza = Pizza.new(name: pepperoni)
    end

    context '#name' do
      it 'should have a name' do
        expect(@pizza.name).to be_a String
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

  describe 'intialize' do
    context 'should be initialized with a name' do
      it 'should raise an error if no name is given' do
        pizza = Pizza.new
        expect(pizza.name).to raise_error(ArgumentError)
      end
    end
  end

end
