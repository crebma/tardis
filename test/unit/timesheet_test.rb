require 'test_helper'

class TimesheetTest < ActiveSupport::TestCase
  test "the truth" do
    timesheet = Timesheet.new
    task = Task.new

    timesheet.task = task

    timesheet.save

    timesheet.reload

    assert_not_nil timesheet.task
  end
end
