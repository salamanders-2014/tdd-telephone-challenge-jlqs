require 'rspec'
require_relative 'topping'


describe Topping do
  describe 'attributes' do

    before do
      @topping = Topping.new(name: "cheese", required_bake_time: 120)
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
        expect(@topping.required_bake_time).to eq(120)
      end
    end

    context '#time_baked' do
      it 'should have a time_baked defaulted to 0' do
        expect(@topping.time_baked).to be_a Integer
        expect(@topping.time_baked).to eq(0)
      end
    end
  end

  describe '#bake(time)' do
    before do
      @topping = Topping.new(name: "Cheese", required_bake_time: 120)
      @topping.bake(100)
    end

    it 'should bake the topping and change the bake time' do
      expect(@topping.bake_time).to eq(100)
    end
  end

  describe '#baked?' do
    before do
      @topping = Topping.new(name: "Cheese", required_bake_time: 120)
      @topping.bake(130)
    end

    it 'should return a boolean if topping is finished baking' do
      bool = [true, false]
      expect(@topping.baked?).to be_true
    end
  end

end
