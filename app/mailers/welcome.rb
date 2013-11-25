class Welcome < Devise::Mailer
  helper :application
  default from: "info@flatironschool.com"


  def welcome_email(user)
    @user = user
    @url = 'http://flatironschool.com/alumni'
    mail(to: @user.email, subject: "Your Flatiron Alumni Account Has Been Created!")
  end

end
