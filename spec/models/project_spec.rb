require 'rails_helper'

describe Project do
  
  describe "with a new project" do
    let(:project) { Project.new }
    let(:task) { Task.new }

    it 'knows that a project with no tasks is done' do
      expect(project).to be_done
    end

    it 'knows that a project with an incomplete task is done' do
      projet.tasks << task
      expect(project).not_to be_done
    end
  end
end
