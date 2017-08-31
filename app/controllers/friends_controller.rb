class FriendsController < ApplicationController

	def index
	    @users = User.all
	end

	def show
	    @friend = User.find(params[:id])
	    @current_user = User.find(params[:current_user_id])
	    
	    @expenses_user = Expense
	                         .joins(:users)
	                         .where('expenses.user_id = (?)', @current_user.id)
	                         .where('users.id = (?)', params[:id])

	    @expenses_friend = Expense
	                           .joins(:users)
	                           .where('expenses.user_id = (?)', params[:id])
	                           .where('users.id = (?)', @current_user.id)

	    @expenses = @expenses_user + @expenses_friend

	    @user_spent = Money.new(0)
	    @user_debtor = Money.new(0)

	    @expenses.each do |expense|

			@number_of_users = expense.users.count
			@user_expense = expense.amount_money / @number_of_users

			if expense.user_id == @current_user.id
			@user_spent += @user_expense
			else
			@user_debtor += @user_expense
			end

	    end

		@global_user = @user_spent - @user_debtor
	
	end

	def friends_params
		permitted = params.require(:user).permit(:current_user_id)
	end
end
