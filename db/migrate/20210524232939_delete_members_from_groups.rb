class DeleteMembersFromGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :members
  end
end
