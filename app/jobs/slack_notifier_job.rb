require 'slack-notifier'

class SlackNotifierJob < ApplicationJob
  queue_as :default

  def perform(post)
    Rails.logger.info("#=======SlackNotifierJob========")

    board = post.board

    if board.slack_url.present?
      notifier = Slack::Notifier.new board.slack_url
      notifier.ping "Yeni bir duyuru gonderildi: #{post.title}"
    end
  end
end
