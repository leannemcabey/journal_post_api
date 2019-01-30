class Api::V1::PostcardsController < ApplicationController

  before_action :find_postcard, only: [:show]

  def index
    @postcards = Postcard.all
    render json: @postcards, status: 200
  end

  def show
    @postcard = find_postcard
    render json: @postcard, status: 200
  end

  def create
    @postcard = Postcard.create(postcard_params)
    render json: @postcard, status: 200
  end

  private

    def postcard_params
      params.permit(:journal_id, :location, :message, :date, :photo_url)
    end

    def find_postcard
      Postcard.find(params[id])
    end

end
