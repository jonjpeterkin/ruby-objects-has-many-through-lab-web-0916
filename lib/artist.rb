class Artist

	attr_accessor :name, :songs


	def initialize(name)
		@name = name
		@songs = []
	end

	def genres
		self.songs.map { |song| song.genre }
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

end