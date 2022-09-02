class UserMailer < ApplicationMailer
  def first_access
    @user = params[:user]
    @password = params[:password]
    mail(to: @user.email, subject: "StepInvest - Here's your access credentials")
  end
end
