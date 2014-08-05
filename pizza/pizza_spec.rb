require 'rspec'
require_relative 'pizza'

describe Pizza do
  describe 'attributes' do
    before do
      @pizza = Pizza.new
    end

    context '#name' do
      it 'should have a name' do
        expect(pizza.name).to be_a String
      end
    end

    context '#description' do
      it 'should have a description' do
        expect(pizza.description).to be_a String
      end
    end

    context '#time_baked' do
      it 'should have a time_baked' do
        expect(pizza.time_baked).to be_a Integer
      end
    end
  end

  describe 'intialize' do
    it 'should be initialized with a name' do

    end
  end

end
