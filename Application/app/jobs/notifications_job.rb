class NotificationsJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.new_user(user)
    # Do something later
  end
end
