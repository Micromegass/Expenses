class ExpensesController < ApplicationController


def index

  @expenses = Expense.order("date DESC")


   @expenses = if params[:concept]
    Expense.where('concept LIKE ?', "%#{params[:concept]}%")  
    end

   @expenses = Expense.where('category_id LIKE ?', "%#{params[:category_id]}%")  
  




end

end 


