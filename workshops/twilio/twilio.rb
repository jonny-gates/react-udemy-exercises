require 'twilio-ruby'

account_sid = 'AC86c5e6cdd7a561bb07e59726c8df47d8'
auth_token = 'd5df847411587ac1c0caa6f3f0db4eec'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+447723460281' # Your Twilio number
to = '+447809676082' # Your mobile phone


client.messages.create(
from: from,
to: to,
body: 'Hello Google Campus!'
)

puts 'Text message sent!'
