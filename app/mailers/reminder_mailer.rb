class ReminderMailer < ApplicationMailer

  def reminer_email(user)
    @user = user
    mail(to:@user.email, subject: "Sabrina's Gone Postal #{Date.today}")
  end
end
