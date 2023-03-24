# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/artist_repository'
require_relative 'lib/album_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title FROM albums;'
# result = DatabaseConnection.exec_params(sql, [])
# below is doing the same as the tow lines of code above.
# result = DatabaseConnection.exec_params('SELECT id, title FROM albums;', [])

# sql = 'SELECT * FROM artists;'
# result = DatabaseConnection.exec_params(sql, [])
# Below is the same as the two lines of code above. 
# result = DatabaseConnection.exec_params('SELECT id, title FROM artists;', [])

# Print out each record from the result set .
# result.each do |record|
#     p record
# end

# Below is the same as lines result = DatabaseConnection.exec_params('SELECT id, title FROM artists;', [])
artist_repository = ArtistRepository.new
album_repository = AlbumRepository.new

# p artist_repository.all
# Below is the same as above but output in a more readable way.
artist_repository.all.each do |artist|
    p artist
end

album_repository.all.each do |album|
    p album
end
