class Api::V1::JournalsController < ApplicationController

  before_action :find_journal, only: [:show, :update]

  def index
    @journals = Journal.all
    render json: @journals, status: 200
  end

  def show
    @journal = find_journal
    render json: @journal, status: 200
  end

  def create
    @journal = Journal.create(journal_params)
    render json: @journal, status: 200
  end

  def update
    @journal = find_journal
    @journal.update(journal_params)
    render json: @journal, status: 200
  end

  private

    def journal_params
      params.permit(:user_id, :title, :current_journal)
    end

    def find_journal
      Journal.find(params[:id])
    end

end
