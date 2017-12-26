class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.integer :team_id, index: true
      t.integer :tournament_id, index: true

      t.timestamps
    end
  end
end
