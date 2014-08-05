require 'rspec'
require_relative 'topping'


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
