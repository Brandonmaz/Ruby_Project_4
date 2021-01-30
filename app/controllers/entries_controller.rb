class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def show
<<<<<<< HEAD
        render json: Entries.find(params[:id])
    end
    
=======
        render json: Entry.find(params["id"])
    end
>>>>>>> 0009ffd2a474d0589af23a3f0b5294466d241e6d
end
