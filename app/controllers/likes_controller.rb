class LikesController < ApplicationController
  before_action :lookup_project

  def new
    @like = Like.new
    @like.song = @song
    @like.save
      respond_to do |format|
      format.html { redirect_to root_url }
      format.js {}
    end  
  end

  def create
    @like = Like.new
    @like.song = @song
    @like.save
      respond_to do |format|
      format.html { redirect_to root_url }
      format.js {}
    end  
  end

  def like_params
    params.require(:like).permit(:song_id)
  end

  def lookup_project
    @song = Song.find(params[:song_id])
  end 

end
