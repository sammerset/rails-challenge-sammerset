class User < ActiveRecord::Base
  has_many :user_levels
  has_many :levels, through: :user_levels

  def level_attempts
    UserLevelAttempt.joins(:user_level).where(user_levels: { user_id: self.id })
  end
end
