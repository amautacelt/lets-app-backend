class ParticipantsController < ApplicationController

    def index
        @participants = Participant.all
        render json: @participants
    end

    def show
        @participant = Participant.find(params[:id])
        render json: @participant
    end

end