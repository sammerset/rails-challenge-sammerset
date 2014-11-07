class User < ActiveRecord::Base
  has_many :user_levels
  has_many :levels, through: :user_levels
  has_many :attempts, through: :user_levels

  def level_attempts
    UserLevelAttempt.joins(:user_level).where(user_levels: { user_id: self.id })
  end

  def finish_level(level, score)
    transaction do
      user_level = self.user_levels.find_or_create_by!(level: level)
      user_level.attempts.create!(score: score)
      user_level.update!(high_score: score) if user_level.high_score.to_i < score
    end
  end
end
