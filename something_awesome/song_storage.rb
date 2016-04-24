# Program that stores songs and related information
# song_name (str), artist_name (str), album_name (str),  original_key (str), year (str)

# User should be able to view all songs, an individual song, and input new songs

# require gems
require 'sqlite3'

# create empty SQLite3 database
db = SQLite3::Database.new("songs.db")
db.results_as_hash = true


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS songs(
    id INTEGER PRIMARY KEY,
    song_name VARCHAR(255),
    artist_name VARCHAR(255),
    album_name VARCHAR(255),
    original_key VARCHAR(255),
    year VARCHAR(255)
    )
SQL

# create songs table if not EXISTS
db.execute(create_table_cmd)

# method to add a new song to the table
def create_song(db, name, artist, album, key, year)
  db.execute("INSERT INTO songs (song_name, artist_name, album_name, original_key, year) VALUES (?, ?, ?, ?, ?)", [name, artist, album, key, year])
end

# method to list all songs

def list_songs(db)
  db.execute("SELECT * FROM songs")
end



# sample song addition
# create_song(db, 'Drive My Car', 'The Beatles', 'Rubber Soul', 'D', 1965)


# Driver code/UI
puts "Welcome to song storage! What would you like to do?"
puts "1: List all songs"
puts "2: Add a song"
puts "3: Get info on a song"
puts "4: Exit"

done = false
error_count = 0
while done == false
  input = gets.chomp
  if input == '1' # list all songs
    puts "Here you go!"
    list_songs(db)
  elsif input == '2' # add a song

    puts "What's the song name?"
    name = gets.chomp
    puts "Who's the artist?"
    artist = gets.chomp
    puts "What album was the song released on?"
    album = gets.chomp
    puts "What's the original key?"
    key = gets.chomp
    puts "What year was the song released?"
    year = gets.chomp
    puts "Thanks!"

    create_song(db, name, artist, album, key, year)

  elsif input == '3' # get info on a song

    puts "What song would you like information on?"
    search = gets.chomp

  elsif input == '4' # exit
    puts "Thanks!"
    done = true
  else
    if error_count >= 3
      puts "You're pretty bad at this. Shutting down."
      done = true
    else
    puts "I don't understand what you're getting at. Maybe try again?"
    error_count += 1
    end
  end
end