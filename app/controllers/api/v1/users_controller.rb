class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show, :update]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = find_user
    render json: @user, status: 200
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: 200
  end

  def update
    @user = find_user
    @user.update(user_params)
    render json: @user, status: 200
  end

  private

    def user_params
      params.permit(:first_name, :last_name, :street_address, :city, :state, :zipcode, :email, :username, :password, :current_journal_id)
    end

    def find_user
      User.find(params[id])
    end

end
