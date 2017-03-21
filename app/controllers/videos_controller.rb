class VideosController < ApplicationController

  def create
   new_video = Video.new(title: params[:title], url: params[:url].tr('"',''))
   new_video.save
   redirect_to dashboard_path
  end

  def destroy
    video = Video.find(params[:id])
    video.delete
    redirect_to dashboard_path
  end

end
