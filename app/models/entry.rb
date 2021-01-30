class Entry < ApplicationRecord
    DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'to_do_api_development'})
    def self.all
        results = DB.exec("SELECT * FROM entries;")
        results.each do |result|
            puts result
        end
    end
end
