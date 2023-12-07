# Load gems
require 'dotenv/load'
require 'nylas'	

# Initialize Nylas client
nylas = Nylas::Client.new(
	api_key: ENV["V3_TOKEN"]
)

status, _ =  nylas.messages.destroy(identifier: ENV["GRANT_ID"], message_id: "<EMAIL_ID>")
if status
    puts "Email successfully deleted"
end
