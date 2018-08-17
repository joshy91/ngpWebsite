class ContactMailer < ApplicationMailer
default from: ENV["OWNER_EMAIL"]

def contact_email(contact)
@contact = contact
mail(to: ENV["OWNER_EMAIL"], from: @contact.email, cc: @contact.email, :subject => "Website Contact")
end
end
