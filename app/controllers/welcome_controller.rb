class WelcomeController < ApplicationController
  def homepage
  end

  def new
    @welcome = welcome.new
  end

 def create
   @welcome = Welcome.new(params[:welcome])
   @welcome.request = request
   if @welcome.deliver
     flash.now[:error] = nil
   else
     flash.now[:error] = 'cannot send message. '
     render :new
 end
end

  def send_mail
    WelcomeMailer.send_welcome_mail(message).deliver_now!
    redirect_to "root_path"
  end
end
