class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user

  mount_uploader :image, BoardLogoUploader

  after_save :send_notifications

  def send_notifications
    board.subscribers.each do |user|
      NotificationMailer.new_post_notification(user, self).deliver_now
    end
  end

end
