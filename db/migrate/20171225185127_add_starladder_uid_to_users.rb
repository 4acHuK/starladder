class AddStarladderUidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :starladder_uid, :string

    add_index :users, :starladder_uid, unique: true
  end
end
