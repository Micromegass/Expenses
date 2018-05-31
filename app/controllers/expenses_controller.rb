class ExpensesController < ApplicationController

before_action :authenticate_user!



def index 
  
  if signed_in? 
  @expenses = current_user.expenses
  @expenses = Expense.order("date DESC")  

  else 
  redirect_to sign_in_path
  end 

 

end 
end 

