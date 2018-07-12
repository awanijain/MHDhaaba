class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone, :validate => /\d[0-9]\)*\z/
  attribute :message, :validate => true

  def headers
    {
    :subject => "Contact Form",
    :to => "awanijain95@gmail.com",
    :from => %("#{name}" <#{email}>)
  }
  
  end
end
