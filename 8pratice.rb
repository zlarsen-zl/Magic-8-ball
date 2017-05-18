@response = ['yes', 'no', 'maybe']

def menu
  puts "Magic 8 ball
        please ask a question or type quit to exit."
  answer = gets.chomp
  action(answer)
end


def action(answer)
    case answer
    when 'quit'
      puts "goodbye"
      exit
    else
      puts "your answer is....."
      puts @response.sample
      menu
      end
end

menu
