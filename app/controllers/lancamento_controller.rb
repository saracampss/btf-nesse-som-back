class LancamentoController < ApplicationController
	def index
		lancamentos = Lancamento.all 
		render json: lancamentos, status: 200
	end

	def create
		lancamento = Lancamento.new(lancamento_params)
		if lancamento.save
			render json: lancamento, status: 201
		else
			render json: lancamento.errors, status: 500
		end
	end 

	def destroy
		lancamento = Lancamento.find(params[:id])
		if lancamento.destroy
			render json: {"status": "Deleted"}, status: 200
		else
			render json: lancamento.errors, status: 500
		end
	end

	def update
		lancamento = Lancamento.find(params[:id])
		if Lancamento.update(lancamento_params)
			render json: lancamento, status: 200
		else
			render json: lancamento.errors, status: 500
		end
	end

	private

		def lancamento_params
			params.permit(:music_name, :artist, :links, :tags)
		end

end