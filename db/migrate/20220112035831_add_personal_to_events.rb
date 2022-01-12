class AddPersonalToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :personal, :integer
  end
end
