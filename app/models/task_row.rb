class TaskRow < ActiveRecord::Base
  belongs_to :task
  has_many :day
end
