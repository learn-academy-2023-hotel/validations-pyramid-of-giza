class AddColumnToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :personal_id, :integer
  end
end
