class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.integer :user_id, index: { unique: true }

      t.timestamps
    end
  end
end
