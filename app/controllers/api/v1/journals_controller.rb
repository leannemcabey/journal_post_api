class Api::V1::JournalsController < ApplicationController

  before_action :find_journal, only: [:show, :update]

  def index
    @journals = Journal.all
    render json: @journals, status: 'accepted'
  end

  def show
    @journal = find_journal
    render json: @journal, status: 'accepted'
  end

  def create
    @journal = Journal.new(journal_params)
    render json: @journal, status: 'accepted'
  end

  def update
    @journal = find_journal
    @journal.update(journal_params)
    render json: @journal, status: 'accepted'
  end

  private

    def journal_params
      params.permit(:user_id, :title, :current_journal)
    end

    def find_journal
      Journal.find(params[id])
    end

end
