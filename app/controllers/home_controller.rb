class HomeController < ApplicationController
  def services
  end

  def contact
   @contact = Contact.new
  end

  def about
  end

  def menu
  end

end
