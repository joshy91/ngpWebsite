class ContactsController < ApplicationController
def new
@contact = Contact.new
end

def create
@contact = Contact.new(secure_params)
if @contact.save
	redirect_to root_path
	ContactMailer.with(contact: @contact).contact_email.deliver_now
	ContactMailer.with(contact: @contact).return_email.deliver_now
	flash[:success] = "Welcome to the Sample App!"
else
	render 'new'
end
end

private
def secure_params
params.require(:contact).permit(:name, :email, :phone, :address, :message)
end

end
