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
end
