class ExpensesController < ApplicationController

before_filter :authenticate_user!



def index 
    @expenses = current_user.expenses.all
  # @expenses = Expense.order("date DESC")
 
end 

end 

