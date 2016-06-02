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
 puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end



def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
   get_song = gets.chomp.downcase
   if songs.include? get_song
     puts "Playing #{get_song}"
   elsif get_song.to_i <= songs.length && get_song.to_i > 0
     song_index = get_song.to_i - 1
     puts "Playing " + songs[song_index]
   else
     puts "Invalid input, please try again"
   end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    user_input = gets.chomp.downcase
    case user_input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
