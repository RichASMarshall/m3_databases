```RUBY
artist = Artist.new

artist.name # 'Pixies'
artist.genre # 'Rock'


artist_repository = ArtistRepository.new

# Select all artists

# SQL: SELECT is, name, genre FROM artists;
# Return an array of Artist objects
artist_repository.all

# Select a single artist
# SQL: SELECT is, name, genre FROM artists WHERE is = '1';
# Return a single Artist object
artist_repository.find(1)

new_artist = Artist.new
new_artist.name = 'Radiohead'
# ...
# SQL: INSERT INTO artists ...

artist_repository.create(new_artist)

```