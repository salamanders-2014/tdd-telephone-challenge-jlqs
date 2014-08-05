require 'rspec'
require_relative 'task'

describe Task do

	before do
		@task = Task.new(name: "Eat", description: "Have a pizza")
	end

	describe '#title' do
		it 'should have a title' do
			expect(@task.name).to be_a String
		end
	end

	describe '#description' do
		it 'should have a description' do
			expect(@task.description).to be_a String
		end
	end

	describe '#status' do
		it 'default status should be incomplete' do
			expect(@task.status).to eq("incomplete")
		end
	end

	describe '#mark_as_complete!' do
		it 'should change the status to complete' do
			@task.mark_as_complete!
			expect(@task.status).to eq("complete")
		end
	end

	describe '#mark_as_incomplete!' do
		it 'should change the status to incomplete' do
			@task.mark_as_incomplete!
			expect(@task.status).to eq("incomplete")
		end
	end

	describe '#complete?' do
		it 'should check whether a task is completed' do
			bool = [true, false]
			expect(bool.include?(@task.status)).to eq(true)
		end
	end







end

