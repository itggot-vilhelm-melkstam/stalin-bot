require 'discordrb'

bot = Discordrb::Bot.new token: 'Mjg2ODg2MDY1NDg5MzEzNzky.C5nRvw.xE95fyrzIO3Mi1lprOUuSLEn7qA', client_id: 286886065489313792

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run