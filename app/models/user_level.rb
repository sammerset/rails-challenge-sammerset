class UserLevel < ActiveRecord::Base
  belongs_to :user
  belongs_to :level
  has_many :attempts, class_name: 'UserLevelAttempt'
end
