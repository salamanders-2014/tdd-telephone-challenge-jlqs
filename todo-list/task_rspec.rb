require 'rspec'
require_relative 'task'

describe Task do

	before do
		@task = Task.new
	end


	# describe Task do
	# 	it { should validate_presence_of :title }
	# 	it { should validate_presence_of :description }
	# 	it { should validate_presence_of :status }
	# 	it { should validate_presence_of :created_at }
	# end

	#These should just be tests for a single Task model (Jeremy)


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
		it 'should have a status' do
			bool = [true, false]
			expect(bool.include?(@task.status)).to be_true
		end
	end


	# describe '#default status' do

	# 	it 'show default status as incomplete' do
	# 		task = Task.new
	# 		expect(task.status).to eq("incomplete")
	# 	end

	# end


	# describe '#mark_as_complete!' do

	# 	it 'shows the status as complete' do


	# 	end

	# end

	# describe '#mark_as_incomplete!' do

	# 	it 'shows the status as incomplete' do

	# 	end

	# end

	# describe '#complete?' do


	# 	it 'should indicate whether a task has been completed' do

	# 	end


	end
