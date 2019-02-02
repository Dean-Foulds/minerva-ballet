class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :type_of_event, :string
    add_column :events, :location, :string
    add_column :events, :teachers, :string
    add_column :events, :description, :string
  end
end
