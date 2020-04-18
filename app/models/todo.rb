class Todo < ActiveRecord::Base
  belongs_to :user
  def self.overdue
    all.where("due_date < ? and completed = ?", Date.today, false)
  end

  def self.due_today
    all.where("due_date = ?", Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end

  def self.completed
    all.where(completed: true)
  end
end
