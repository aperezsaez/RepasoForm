class AddStatusToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :status, :integer, default: 0
  end
end
