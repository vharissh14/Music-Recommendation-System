class MusicController < ApplicationController
def index
  @articles = Song.where(uid: params[:todo_text])
end

def show
  @articles = Song.find_by_id(params[:id])
      @bit_rate = @articles.bit_rate.to_i()/1000
      @file_size = @articles.file_size/(1024*1024)
      if @articles.year==0 then
        @yr = "Unknown"
      else
        @yr = @articles.year
      end

      if @articles.composer=='' then
        @composer = "Unknown"
      else
        @composer = @articles.composer
      end

      if @articles.genere=='' then
        @genere = "Unknown"
      else
        @genere = @articles.genere
      end
end

def home
end

def api
  @a = ApiKey.new
  @a.name=params[:name]
  @a.email=params[:email]
  if @a.name? && @a.email?
    @a.save
  end
end

end
