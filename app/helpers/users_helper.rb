module UsersHelper
  def roles
    [:ADMIN, :APPROVER, :EMPLOYEE]
  end

  def categories
    ['1099', 'W-2 HOURLY', 'W-2 SALARY']
  end
end
