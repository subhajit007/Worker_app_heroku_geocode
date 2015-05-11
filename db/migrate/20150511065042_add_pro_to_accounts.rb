class AddProToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :pro, :boolean
  end
end
