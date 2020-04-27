class Api::V1::EventsController < ApplicationController

    before_action :find_event, only: [:update, :destroy]

    def index
        @events = Event.all
        #pry
        render json: @events
    end

    def create
        # pry
        event = Event.create(:name => params[:name], :date => params[:date])
        render json: event
    end

    def update
        @event.update(event_params)
        if @event.save
            render json: @event, status: :accepted
        else
            render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        Event.destroy(params[:id])
        pry
        @events = Event.all
        render json: @events
    end



    private

    def event_params
        params.permit(:id, :date, :name)
    end

    def find_event
        @event = Event.find(params[:id])
    end

end
