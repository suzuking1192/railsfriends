class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attribute :message, :validate => true

  def headers
    {
    :subject => 'Contact Form',
    :to => 'mokkumokku99@gmail.com',
    :from => %("#{name}"<#{email}>)
    }
  end
end
