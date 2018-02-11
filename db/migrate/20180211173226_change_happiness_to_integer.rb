class ChangeHappinessToInteger < ActiveRecord::Migration
  def change
    change_column :users, :happiness, :integer
  end
end
