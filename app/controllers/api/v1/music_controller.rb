module Api
  module V1
    class MusicController < ApplicationController

      before_filter :restrict_access
      respond_to :json

      def index
        @articles = Song.where(uid: params[:id]).take(4)
        respond_with @articles
      end

      private
      def restrict_access
        api_key = ApiKey.find_by_access_token(params[:access_token])
        head :unauthorized unless api_key
      end
end
  end
end
