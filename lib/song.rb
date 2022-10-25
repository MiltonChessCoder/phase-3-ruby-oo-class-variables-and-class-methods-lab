class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}

    
   
    
    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        
        @@count += 1 
        @@genres << genre 
        @@artists << artist 
    end
    
    def self.count 
        @@count 
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count 
        @@genres.uniq.each do |x|
            @@genre_count[x] = @@genres.count(x)
        end 
        @@genre_count
    end

    def self.artist_count 
        @@artists.uniq.each do |b|
            @@artist_count[b] = @@artists.count(b)
        end 
        @@artist_count
    end 
end 