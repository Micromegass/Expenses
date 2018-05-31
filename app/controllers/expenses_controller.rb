class ExpensesController < ApplicationController


def index

   if params[:category_id]
    @expenses = Expense.where(:category_id => params[:category_id])
   else
     @expenses = Expense.order("date DESC")
   end


end


end 


