class AdmController < ApplicationController
  def update
		adm = Adm.find(params[:id])
		if Adm.update(adm_params)
			render json: adm, status: 200
		else
			render json: adm.errors, status: 500
		end
	end

	private

		def adm_params
			params.permit(:email, :password)
		end

end