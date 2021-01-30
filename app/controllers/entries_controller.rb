class EntriesController < ApplicationController
    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end
    
    def create
        render json: Entry.create(params["entry"])
    end

    def delete
        render json: Entry.delete(params["id"])
    end
end
