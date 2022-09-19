class Music
    def initialize
        @music_list = []
    end

    def add_song(song)
        @music_list.push(song)
    end

    def song_list
        @music_list
    end

end 