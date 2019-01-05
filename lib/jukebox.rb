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
  puts
"I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

# THE LIST METHOD
# This method takes in an argument of the songs array of puts out the following:

# 1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up
# 3. Sufjan Stevens - Too Much
# 4. The Naked and the Famous - Young Blood
# 5. (Far From) Home - Tiga
# 6. The Cults - Abducted
# 7. Phoenix - Consolation Prizes
# 8. Harry Chapin - Cats in the Cradle
# 9. Amos Lee - Keep It Loose, Keep It Tight


# Hint: Use the Array#each_with_index method to access the index number of a given element as you step through the iteration. Remember that arrays are indexed starting at 0. So, adding 1 to the index number at a given step of the iteration will result in the correct song number for the purposes of outputting your list of songs.


def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end



def play(songs)
  puts "Please enter a song name or number:"
  user_request = gets.chomp
  songs.each_with_index do |song, i|
    if user_request.to_i == i
    puts "playing #{songs[i-1]}"
  elsif user_request == song
  puts "playing #{song[i]}"
else puts "Invalid input, please try again"
  end
end

end


play(songs)
# THE PLAY METHOD
# This method also takes in an argument of the songs array. It first puts out the prompt: "Please enter a song name or number:". It then stores the user's response using gets.chomp.

# If the user's response is a valid song number or song name, the method should puts out: "Playing <song name>". Otherwise, it should puts out: "Invalid input, please try again".


# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)
