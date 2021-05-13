class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :members
      t.string :email
      t.string :nick_name
      t.integer :phone

      t.timestamps
    end
  end
end
