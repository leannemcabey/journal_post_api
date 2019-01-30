class Api::V1::PostcardsController < ApplicationController

  before_action :find_postcard, only: [:show]

  def index
    @postcards = Postcard.all
    render json: @postcards, status: 'accepted'
  end

  def show
    @postcard = find_postcard
    render json: @postcard, status: 'accepted'
  end

  def create
    @postcard = Postcard.new(postcard_params)
    render json: @postcard, status: 'accepted'
  end

  private

    def postcard_params
      params.permit(:journal_id, :location, :message, :date, :photo_url)
    end

    def find_postcard
      Postcard.find(params[id])
    end

end
