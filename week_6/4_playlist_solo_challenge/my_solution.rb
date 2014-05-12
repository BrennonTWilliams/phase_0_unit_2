# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself


# Pseudocode
# Create Song and playlist classes
# Give each class an initialize function
# For Song class define @song and @artist
# Create play method, printing what is being played
# Create @songs array in initialize of Playlist
# Create includes? method and search @songs for passed value
# Create add method and pushed passed songs to @songs
# Crate num_of_tracks method, returns @songs length
# Create remove method, delete passed song
# Create display method, print all songs and artists
# Create play_all method, iterate through @songs playing each

# Initial Solution

class Song
	def initialize (song, artist)
		@song = song
		@artist = artist
	end

	def play
		puts "playing #{@song}"
	end
end

class Playlist
	def initialize (song1, song2, song3)
		@song1 = song1
		@song2 = song2
		@song3 = song3
		@songs = [@song1, @song2, @song3, "lying_from_you"]
	end

	def includes? included_song
		#@songs.index{|s| s.include?(included_song)}
		@songs.include?(included_song)
	end

	def add added_song_1, added_song_2
		@songs.push added_song_1
		@songs.push added_song_2
	end

	def num_of_tracks
		return @songs.length
	end

	def remove removed_song
		@songs.delete(removed_song)
	end

	def display
		@songs.each do |song, artist|
			puts "DISPLAY"
			puts "#{song}: #{artist}"
		end
	end

	def play_all
		#@songs.map {|song| song.play} # 'play' throws and error here, not sure why. 
	end
end

# Refactored Solution

# Still working on this one, trying to get help from tutor some time this week.
# All slots are full today.




# DRIVER TESTS GO BELOW THIS LINE
 one_by_one = Song.new("One by One", "Sirenia")
 world_so_cold = Song.new("World So Cold", "Three Days Grace") 
 going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection 

# I had a harder time than usual with this one. I think EDD problems are harder to solve
# because you have to piece together a program by a list of what is wrong with it, never
# getting an overview of what the program is supposed to be doing. For instance, I wasn't
# sure how to handle song playing. A lot was left open to interpretation which made the 
# problem a bit more difficult for me. This upcoming week is crazy for me (I'm moving) but
# I'm going to try to get in a tutor session as soon as possible.