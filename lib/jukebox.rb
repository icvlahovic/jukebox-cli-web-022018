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
  songs.each_with_index { |song, i| puts "#{i + 1}. #{song}" }
end

def play(song_list)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if (1..9).to_a.include?(song.to_i)
    puts "Playing #{song_list[song.to_i - 1]}"
  elsif song_list.include?(song)
    puts "Playing #{song}"
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  while true
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "exit"
      exit_jukebox
      break
    elsif user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    end
  end
end
