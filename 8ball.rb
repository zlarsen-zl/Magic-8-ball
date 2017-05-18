@original = ['Yes', 'No', 'Maybe', 'SUCK IT']
@answer = @original.clone

def magic_menu
  puts "-----Ask the Magic 8 ball------
        1) Shake the ball!
        2) add answers
        3) Print all answers
        4) reset answers
        type QUIT to exit"
  user_input =  gets.chomp
  magic_menu_case(user_input)
end

def magic_menu_case(user_input)
  case user_input
  when '1'
    user_question
  when '2'
    add_answer
  when '3'
    print_answer
  when '4'
    reset_answer
  when 'quit'
    quit
  end
end

#### SHAKE THE BALL####
def answer
  puts = @answer.sample
end

def user_question
  puts "what is your question?"
  question = gets.chomp.downcase
  ball_action(question)
end

def ball_action(question)
  case question
  when 'what is the meaning of life?'
    puts '42'
    user_question
  when 'quit'
    quit
  else
    puts answer
    user_question
  end
end

def quit
  puts "See ya later sucker!"
  exit
end
###################################

###########ADD ANSWER############

def add_answer
  puts 'What answer do you want to add?'
  new_answer = gets.chomp
    if @answer.include?(new_answer)
      puts "That is already a Answer!"
    magic_menu
    else
  puts "You added #{new_answer} to the magic 8 ball!"
  @answer << new_answer
  magic_menu
  end
end

################PRINT ANSWER########

def print_answer
  puts 'Here are the answers!'
  puts @answer
  magic_menu
end

###########RESET ANSWERS########

def reset_answer
  puts 'Ok we are reseting the answers!'
  @answer = @original.clone
  magic_menu
end

magic_menu
