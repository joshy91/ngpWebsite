class ContactMailer < ApplicationMailer
default from: ENV['OWNER_EMAIL']

def contact_email
@contact = params[:contact]
mg_client = Mailgun::Client.new ENV['mail_gun_key']
message_params = {:from    => @contact.email,
                  :to      => ENV['OWNER_EMAIL'],
		  :cc      => ENV['support_email'],
                  :subject => 'NGParts Website Message from ' + @contact.name,
                  :text    => 'You received a message from ' + @contact.name + ' with email address ' + @contact.email + ' and phone number ' + @contact.phone + '.
The visitor said: ' + @contact.message }
mg_client.send_message ENV['mail_gun_domain'], message_params
end

def return_email
@contact = params[:contact]
mg_client = Mailgun::Client.new ENV['mail_gun_key']
message_params = {:from    => "mailgun@#{ENV['mail_gun_domain']}",
                  :to      => @contact.email,
                  :subject => 'NGParts Website Message Sent',
                  :text    => 'You sent a message to Nogalitos Gear Company. The message said: ' + @contact.message }
mg_client.send_message ENV['mail_gun_domain'], message_params
end

end

