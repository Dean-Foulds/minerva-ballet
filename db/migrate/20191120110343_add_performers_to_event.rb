class AddPerformersToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :performers, :string
  end
end
