json.extract! expense, :id, :title, :amount_money, :user_id, :created_at, :updated_at, :users
json.url expense_url(expense, format: :json)
