class NotificationMailer < ApplicationMailer
  default from: 'ab2017railsatolye@gmail.com'

  def new_post_notification(user, post)
    @post = post
    mail(to: user.email, subject: 'Yeni Duyuru')
  end
end
