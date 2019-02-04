class AddUserData < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :date_of_birth, :string
    add_column :users, :telephone, :string
    add_column :users, :next_of_kin, :string
    add_column :users, :previous_injuries, :string
  end
end
