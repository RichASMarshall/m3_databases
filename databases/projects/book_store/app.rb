require_relative 'lib/database_connection'

DatabaseConnection.connect('book_store')

result = DatabaseConnection.exec_params('SELECT * FROM XXX;', [])

# p result

result.each do |record|
    p record
end
