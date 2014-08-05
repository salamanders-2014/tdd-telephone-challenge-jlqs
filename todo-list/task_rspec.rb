require 'rails_helper'

RSpec.describe Task, :type => :model do

	describe Task do
		it { should validate_presence_of :title }
		it { should validate_presence_of :description }
		it { should validate_presence_of :status }
		it { should validate_presence_of :created_at }
	end

	describe '#default status' do

		it 'show default status as incomplete' do
			task = Task.new
			expect(task.status).to eq("incomplete")
		end

	end




	describe '#mark_as_complete!' do

		it 'shows the status as complete' do


		end

	end

	describe '#mark_as_incomplete!' do

		it 'shows the status as incomplete' do

		end

	end

	describe '#complete?' do

		it 'should indicate whether a task has been completed' do

		end

	end