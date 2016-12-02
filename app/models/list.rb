class List < ApplicationRecord
  has_many :items
  has_many :shared_lists
  has_many :users, :through => :shared_lists
  # belongs_to :user
  has_many :team_users, through: :teams


  validates :name, :presence => true, :length => {:minimum => 3}


  accepts_nested_attributes_for :items

end
