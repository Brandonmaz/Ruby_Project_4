class Entry < ApplicationRecord
    DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'to_do_api_development'})
    def self.all
        results = DB.exec("SELECT * FROM entries;")
        results.each do |result|
            puts result
        end
    end

    def self.find(id)
        results = DB.exec("SELECT * FROM entries WHERE id=#{id};")
        return {
            "task" => results.first["task"],
            "description" => results.first["description"],
            "date" => results.first["date"],
            "due_date" => results.first["due_date"],
            "done" => results.first["done"]
        }
    end


end
