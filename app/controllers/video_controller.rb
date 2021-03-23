class VideoController < ApplicationController 
	def index
		videos = Video.all 
		render json: videos, status: 200
	end

	def create
		video = Video.new(video_params)
		if video.save
			render json: video, status: 201
		else 
			render json: video.errors, status:500
		end
	end

	def destroy 
		video = Video.find(params[:id])
		if video.destroy
			render json: {"status": "Deleted"}, status: 200
		else
			render json: video.errors, status: 500
		end
	end

	def update
		video = Video.find(params[:id])
		if Video.update(video_params)
			render json: video, status: 200
		else
			render json: video.errors, status: 500
		end
	end


	private

		def video_params
			params.permit(:name, :link, :description, :id)
		end
end