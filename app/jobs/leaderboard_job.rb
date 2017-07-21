class LeaderboardJob < ApplicationJob
  queue_as :default

  def perform(payload)
    Slack::Leaderboard.show(payload)
  end
end
