require 'pry'
# Add your code here

def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  #binding.pry
  songs.each_with_index do |song, index|
    #binding.pry
    if user_input.to_i <= songs.length && user_input.to_i == index + 1
      #binding.pry
      puts "Playing #{song}"
    elsif user_input == song
    #binding.pry
       puts "Playing #{song}"
    else
      # puts "Invalid input, please try again"
    end 
  end 
end 

def exit_jukebox 
  puts "Goodebye"
end 