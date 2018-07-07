class WelcomeMailer < ApplicationMailer
  def send_welcome_mail(message)
    mail(to:"awanijain146@gmail.com", from: "awanijain95@gmail.com", subject:"testinggmail", message: message)
  end
end
