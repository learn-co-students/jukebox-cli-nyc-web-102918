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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  #song_array = []
  #song_titles = []
  #songs.each do |song|
  #  song_array = song.split(" - ")
  #  song_titles << song_array[1]
  #end
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  #if song_titles.include?(user_choice)
  if songs.include?(user_choice)
    puts "Playing #{user_choice}"
  elsif user_choice.to_i > 0 && user_choice.to_i <= songs.length
    song_number = user_choice.to_i
    puts "Playing #{songs[song_number - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.chomp
    unless user_command == "exit"
      if user_command == "list"
        list(songs)
      elsif user_command == "play"
        play(songs)
      elsif user_command == "help"
        help
      else
        puts "Please enter a command:"
        user_command = gets.chomp
      end
      puts "Please enter a command:"
      user_command = gets.chomp
    else
      exit_jukebox
    end
end
