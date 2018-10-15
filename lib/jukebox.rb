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
   puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"

end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  song_name_or_number = gets.chomp
  songs.each_with_index do |song, idx|
    if song_name_or_number == song || song_name_or_number.to_i == idx + 1
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp
   if answer == "list"
    list(songs)
  elsif answer == "play"
    play(songs)
  elsif answer == "help"
    help
  elsif answer == "exit"
    exit_jukebox
  end
end
    
    
    
  
  