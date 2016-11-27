class User < ApplicationRecord
  has_many :lists
  has_many :shared_lists
  has_many :lists, :through => :shared_lists
  has_many :teams, foreign_key: "team_mate_id"
  has_many :team_lists, through: :teams, source: :lists
end
