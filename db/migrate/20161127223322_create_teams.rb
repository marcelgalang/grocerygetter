class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :list_id
      t.integer :team_mate_id

      t.timestamps
    end
  end
end
