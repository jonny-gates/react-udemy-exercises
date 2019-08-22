require_relative 'watson_assistant'

user_input = ''
watson = WatsonAssistant.new

# p watson

while user_input != 'exit'
  puts 'how can I help you? type exit to exit'
  user_input = gets.chomp
  unless user_input == 'exit'
    puts watson.send_message(user_input)
  end
end
