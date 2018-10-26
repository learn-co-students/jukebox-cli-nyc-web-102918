require "pry"
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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  counter = 0
  songs.each do |songName|
    puts "#{counter+1}. #{songName}"
    counter += 1
  end
end

def play(song_array)
 puts "Please enter a song name or number:"
 
 songInput = gets.chomp

for x in 0...song_array.length
counter = x+1
    if song_array[x] == songInput || songInput.to_i == counter
      puts song_array[x]
    end
  end
  puts "Invalid input, please try again"
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
  input = gets.chomp
  input
  puts "Please enter a command:"
end
exit_jukebox
end
