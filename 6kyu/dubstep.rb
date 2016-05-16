def song_decoder(song)
  song.gsub("WUB"," ").split.join(" ")
end