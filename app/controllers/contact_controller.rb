class ContactController < ApplicationController
def new
@contact = Contact.new
end
def create
@contact = Contact.new(secure_params)
UserMailer.contact_email(@contact).deliver
flash[:notice] = "Message sent from #{@contact.name}."
redirect_to root_path
end
end
private
def secure_params
params.require(:contact).permit(:name, :email, :phone, :address, :message)
end
