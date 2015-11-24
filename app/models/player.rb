class Player < ActiveRecord::Base
  belongs_to :member
  has_many :team_players
  has_many :teams, through: :team_players

  validates_with DateValidator

  validates :name, presence: true,
                   uniqueness: { scope: :number , case_sensitive: false}
  validates :number, presence: true,
                     format: { with: /\A(?=[a-zA-Z]*\d)(?=[a-zA-Z]*).{1,4}\z/ }
end
