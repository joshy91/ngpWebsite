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

def send_simple_message
	RestClient.post "https://api:YOUR_API_KEY" 
	"@api.mailgun.net/v3/YOUR_DOMAIN_NAME/messages",
	:from => "Excited User <mailgun@YOUR_DOMAIN_NAME>",
	:to => "bar@example.com, YOU@YOUR_DOMAIN_NAME",
	:subject => "Hello",
	:text => "Testing some Mailgun awesomness!"
end

end

