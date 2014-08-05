require 'rspec'
require_relative 'pizza'

describe Pizza do
  before do
    @pizza = Pizza.new
  end

  describe '#name' do
    it 'should have a name' do
      expect(pizza.name).to be_a String
    end
  end

  describe '#description' do
    it 'should have a description' do
      expect(pizza.description).to be_a String
    end
  end

  describe '#time_baked' do
    it 'should have a time_baked' do
      expect(pizza.time_baked).to be_a Integer
    end
  end
end
