class ChangePhoneToBigint < ActiveRecord::Migration[5.1]
  def change
      change_column :groups,:phone, :bigint
  end
end
