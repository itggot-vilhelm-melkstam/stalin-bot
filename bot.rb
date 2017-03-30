require 'discordrb'

bot = Discordrb::Bot.new token: 'Mjg2ODg2MDY1NDg5MzEzNzky.C5nRvw.xE95fyrzIO3Mi1lprOUuSLEn7qA', client_id: 286886065489313792

bot.message(containing: 'kapitalism') do |event|
  event.respond 'Hoppas du inte säger något bra om kapitalismen, länge leve kommunismen!'
end

bot.message(with_text: 'meme') do |event|
	event.respond "Here's a communist meme for everyone!"
  event.channel.send_file File.new(Dir.glob("./memes/*").sample)
end

bot.message(with_text: 'funfact') do |event|
	fun_facts = File.read("fun_facts.txt").split(/$^$/)
	event.respond fun_facts.sample
end

bot.run
