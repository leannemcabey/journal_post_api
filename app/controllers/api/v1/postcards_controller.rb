# require_relative 'config/initializers/aws_sdk.rb'

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
    file_url = post_photo_to_s3
    @postcard = Postcard.create(postcard_params)
    @postcard.photo_url = file_url
    @postcard.save
    render json: @postcard, status: 200
  end

  def post_photo_to_s3
    encoded_file = params[:postcard][:photo_url]
    decoded_file = Base64.decode64(encoded_file)

    keys = Rails.application.credentials[:aws]
    creds = Aws::Credentials.new(keys[:access_key_id], keys[:secret_access_key])
    s3 = Aws::S3::Resource.new(region:'us-east-2', credentials: creds)
    bucket = s3.bucket('journalpost')
    obj = s3.bucket('journalpost').object(DateTime.now.to_s)

    obj.put(body: decoded_file, acl: 'public-read', content_type: 'image/jpeg', content_encoding: 'base64')

    obj.public_url
  end

  private

    def postcard_params
      params.permit(:journal_id, :location, :message, :date, :photo_url)
    end

    def find_postcard
      Postcard.find(params[:id])
    end

end
