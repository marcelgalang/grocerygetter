class Team < ApplicationRecord
  belongs_to :project
  belongs_to :team_mate, class_name: "User"
end
