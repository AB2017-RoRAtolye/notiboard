class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user
  has_many :comments

  mount_uploader :image, BoardLogoUploader

  after_create :send_notifications
  after_update :send_update_notifications

  def send_notifications
    board.subscribers.each do |user|
      NotificationMailer.new_post_notification(user, self).deliver_later
    end
    SlackNotifierJob.perform_later(self)
  end


  def send_update_notifications
    #Send update update notifications
  end
end
