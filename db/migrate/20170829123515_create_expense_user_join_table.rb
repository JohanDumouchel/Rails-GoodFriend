class CreateExpenseUserJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :expenses_users, id: false do |t|
      t.belongs_to :expense, index: true
      t.belongs_to :user, index: true
    end
  end
end
