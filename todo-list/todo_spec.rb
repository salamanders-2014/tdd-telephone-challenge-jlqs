require 'rspec'
require_relative 'todo'

describe Todo do

  before do
    @todo = Todo.new(title: "test")
  end

  describe '#title' do
    it 'should have a title' do
      expect(@todo.title).to eq("test")
    end
  end

end

