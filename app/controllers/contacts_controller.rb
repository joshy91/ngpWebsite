class ContactsController < ApplicationController
def new
@contact = Contact.new
end
def create
@contact = Contact.create(secure_params)
ContactMailer.with(contact: @contact).contact_email.deliver_now
redirect_to(root_path, notice: 'Message was successfully sent')
end
private
def secure_params
params.require(:contact).permit(:name, :email, :phone, :address, :message)
end
end
