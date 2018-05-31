class Expense < ActiveRecord::Base
  belongs_to :category

  def search_expenses
  end 

end
