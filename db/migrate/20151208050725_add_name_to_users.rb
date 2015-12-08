class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :role, :boolean
    add_column :users, :sessions, :integer
  end
end
