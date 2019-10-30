class ReminderMailer < ApplicationMailer

  def reminder_email(user)
    @letter_writer = user
    mail(to:@letter_writer.email, subject: "Sabrina's Gone Postal #{Date.today}")
  end
end
