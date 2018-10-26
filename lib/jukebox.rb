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
  commands = ["I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"]
  commands.each do |command|
    puts command
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  songs.each_with_index do |song, index|
    if song_choice.to_i != index + 1 && song_choice != song
      puts "Invalid input, please try again"
    else song_choice.to_i == index + 1 || song_choice == song
      puts "Playing #{song}"
      break
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
    index += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  unless user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "play"
      play(songs)
    when"list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
    puts "Invalid input, pleast try again"
    user_input = gets.chomp
    end
  end
end
