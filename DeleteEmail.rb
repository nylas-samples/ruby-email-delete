#!/usr/bin/env ruby
require 'dotenv/load'
require 'nylas'
require 'date'

nylas = Nylas::API.new(
    app_id: ENV["CLIENT_ID"],
    app_secret: ENV["CLIENT_SECRET"],
    access_token: ENV["ACCESS_TOKEN"]
)

messageId = "<MESSAGE_ID>"

labelsDict = Hash.new
labels = nylas.labels
labels.each{ |label|
	labelsDict[label.name] = label.id
}

begin
	message = nylas.messages.find(messageId)
	message.update(label_ids: [labelsDict["trash"]])
	message.save
	puts "Your message was succesfully deleted"
rescue => error
	puts error.message
end
