class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end
    
end
