class PubliController < ApplicationController
  def index 
		publis = Publi.all 
		render json: publis, status: 200
	end

	def create 
		publi = Publi.new(publi_params)
		if publi.save
			render json: publi, status: 201
		else 
			render json: publi.errors, status: 500
		end
	end

	def destroy
		publi = Publi.find(params[:id])
		if publi.destroy
			render json: {"status": "Deleted"}, status: 200
		else
			render json: publi.errors, status: 500
		end
	end

	def update 
		publi = Publi.find(params[:id])
		if Publi.update(podcast_params)
			render json: publi, status: 200
		else 
			render json: publi.errors, status: 500
		end
	end 

	private 

		def publi_params
			params.permit(:tittle, :thumb, :author, :content, :img_ctt, :tag, :id)
		end

end