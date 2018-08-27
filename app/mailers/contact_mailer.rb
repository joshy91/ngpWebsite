class ContactMailer < ApplicationMailer
default from: ENV['OWNER_EMAIL']

def contact_email
@contact = params[:contact]
mg_client = Mailgun::Client.new ENV['mail_gun_key']
message_params = {:from    => ENV['OWNER_EMAIL'],
                  :to      => @contact.email,
                  :subject => 'Sample Mail using Mailgun API',
                  :text    => 'You received a message from ' + @contact.name + ' with email address ' + @contact.email + ' and phone number ' + @contact.phone + '.
The visitor said: ' + @contact.message }
mg_client.send_message ENV['mail_gun_domain'], message_params

end
end

