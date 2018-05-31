class ExpensesController < ApplicationController

before_action :authenticate_user!



def index 
  
  if signed_in? 
  @expenses = current_user.expenses
  @expense = current_user.expenses.new
  @expenses = Expense.order("date DESC")  
  else 
  redirect_to sign_in_path
  end 

   def new
    @expense = current_user.expenses.new
 end

 

end 
end 

