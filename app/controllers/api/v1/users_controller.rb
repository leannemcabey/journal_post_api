class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show, :update]

  def index
    @users = User.all
    render json: @users, status: 'accepted'
  end

  def show
    @user = find_user
    render json: @user, status: 'accepted'
  end

  def create
    @user = User.new(user_params)
    render json: @user, status: 'accepted'
  end

  def update
    @user = find_user
    @user.update(user_params)
    render json: @user, status: 'accepted'
  end

  private

    def user_params
      params.permit(:first_name, :last_name, :street_address, :city, :state, :zipcode, :email, :password, :current_journal_id)
    end

    def find_user
      User.find(params[id])
    end

end
