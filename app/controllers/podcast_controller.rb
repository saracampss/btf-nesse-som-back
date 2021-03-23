class PodcastController < ApplicationController
  def index
    podcasts = Podcast.all
    render json: podcasts, status: 200
  end
  
  def create
    podcast = Podcast.new(podcast_params)
    if podcast.save
      render json: podcast, status: 201
    else
      render json: podcast.errors, status: 500
    end
  end
 
  
  def destroy
    podcast = Podcast.find(params[:id])
    if podcast.destroy
      render json: {"status": "Deleted"}, status: 200
    else
      render json: podcast.errors, status: 500
    end
  end

  def update
    podcast =  Podcast.find(params[:id])
    if Podcast.update(podcast_params)
      render json: podcast, status: 200
    else
      render json: podcast.errors, status: 500
    end
  end

  private 

    def podcast_params
      params.permit(:name, :link, :description, :id)
    end
  
end
  
