class RecordResultJob < ApplicationJob
  queue_as :default

  def perform(payload)
    Slack::Result.create(payload)
  end
end
