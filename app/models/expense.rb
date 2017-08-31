class Expense < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :users

	monetize :amount_cents, :as => "amount_money"


	def amount
		self.amount_money.to_f
	end

	def payer
		self.user
	end

	def beneficiares
		self.users
	end
end
