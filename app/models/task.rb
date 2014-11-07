class Task < ActiveRecord::Base
  belongs_to :project

  def initialize
    @completed = false
  end

  def mark_completed
    @completed = true
  end

  def completed?
    @completed
  end
end
