class ApplicationController < ActionController::Base
  require 'rspotify'
  require 'openai'
  
  before_action :set_common_variable

  private

    # APIキーを設定
  def set_common_variable
  	RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
    @client = OpenAI::Client.new(access_token: ENV["CHATGPT_API_KEY"])
  end
end
