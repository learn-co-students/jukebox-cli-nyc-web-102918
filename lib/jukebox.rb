require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
commands_list = [
  "I accept the following commands:",
  "- help : displays this help message",
  "- list : displays a list of songs you can play",
  "- play : lets you choose a song to play",
  "- exit : exits this program"
]

  i = 0
  while i < commands_list.length
    puts commands_list[i]
    i += 1
  end

end

def list(songs)
  #array = ["Phoenix - 1901", "Tokyo Police Club - Wait Up", "Sufjan Stevens - Too Much", "The Naked and the Famous - Young Blood", "(Far From) Home - Tiga", "The Cults - Abducted", "Phoenix - Consolation Prizes", "Harry Chapin - Cats in the Cradle", "Amos Lee - Keep It Loose\, Keep It Tight"]
  i = 0
  songs.each do |x|
    puts "#{i+1}. #{x}"
    i += 1
  end
end


def play(songs)

     puts "Please enter a song name or number:"
     user_response = gets.chomp   #gets.chomp return strings "1"

     if songs.include?(user_response)
       puts "Playing #{user_response}"
     elsif (1..songs.length).include?(user_response.to_i) #
       puts "Playing #{songs[user_response.to_i-1]}" #
     else
       puts "Invalid input, please try again"
     end

end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  #binding.pry
  puts "Please enter a command:"
  user_command = gets.chomp

  case  user_command
    when "exit"
      exit_jukebox
    when  "list"
        list(songs)
    when "play"
        play(songs)
    when "help"
        help
      else
    user_command = gets.chomp
  end

end


# command line app example:
# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

# 4 commands: help, play, list, and exit.
