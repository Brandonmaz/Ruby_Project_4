class EntriesController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params["id"])
    end

    def create
        render json: Entry.create(params["entry"])
    end

    def delete
        render json: Entry.delete(params["id"])
    end

    def update
        render json: Entry.update(params["id"], params["entry"])
    end

    #controller for task done
    def update_done
        render json: Entry.update_done(params["id"])
    end
end
