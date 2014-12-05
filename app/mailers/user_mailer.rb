class UserMailer < ActionMailer::Base
  default from: "hello@driveforfree.cz"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.Welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to DriveForFree !')
  end
end
