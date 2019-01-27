class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  rename_column  :users, :second_name, :last_name
  end
end
