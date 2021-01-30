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
            "due_date" => results.first["due_date"],
            "done" => results.first["done"]
        }
    end

    def self.create(opts)
        results = DB.exec(
            <<-SQL
                INSERT INTO entries (task, description, due_date, done)
                VALUES ('#{opts["task"]}', '#{opts["description"]}', '#{opts["due_date"]}', #{opts["done"]})
                RETURNING task, description, due_date, done;
            SQL
        )
        return {
            "task" => results.first["task"],
            "description" => results.first["description"],
            "due_date" => results.first["due_date"],
            "done" => results.first["done"]
        }
    end

    def self.delete(id)
        results = DB.exec("DELETE FROM entries WHERE id=#{id};")
        return { "deleted": true }
    end

    def self.update(id, opts)
        results = DB.exec(
            <<-SQL
                UPDATE entries
                SET task = '#{opts["task"]}',
                description = '#{opts["description"]}',
                due_date = '#{opts["due_date"]}',
                done = #{opts["done"]}
                WHERE id = #{id}
                RETURNING task, description, due_date, done;
            SQL
        )
        return {
            "task" => results.first["task"],
            "description" => results.first["description"],
            "due_date" => results.first["due_date"],
            "done" => results.first["done"]
        }
    end


end
