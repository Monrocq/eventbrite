class UserMailer < ApplicationMailer
  default from: 'no-reply@eventbrite.bzh'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def registration_email(attendance)
    @attendance = attendance
    mail(to: @attendance.user.email, subject: 'Registration bien enregistré')
  end
end
