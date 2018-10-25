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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def play(songs)
  puts "Please enter a song name or number:"
  
  users_input = gets.chomp
  
  songs.each do |song|
    if song == gets.chomp || (songs.index(song) + 1).to_s == gets.chomp 
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  counter = 1
  songs.each do |song|
    puts "#{counter}. #{song}"
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      break
    end
  end
  exit_jukebox
end

