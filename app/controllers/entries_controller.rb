class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def show
        render json: Entries.find(params[:id])
    end
    
end
