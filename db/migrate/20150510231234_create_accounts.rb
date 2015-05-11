class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
