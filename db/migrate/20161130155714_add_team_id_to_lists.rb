class AddTeamIdToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :team_id, :integer
  end
end
