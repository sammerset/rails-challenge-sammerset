class Level < ActiveRecord::Base
  belongs_to :next_level, class_name: 'Level', foreign_key: 'next_level_id'
  has_one :previous_level, class_name: 'Level', foreign_key: 'next_level_id'
  has_many :user_levels
  has_many :users, through: :user_levels
  has_many :attempts, class_name: 'UserLevelAttempt', through: :user_levels
end
