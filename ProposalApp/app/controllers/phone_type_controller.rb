class PhoneTypeController < ApplicationController

	def index
		@phone_type = PhoneType.all
	end

	def new
		@phone_type = PhoneType.new
	end

	def create
		@phone_type = PhoneType.new phone_type_params

		if @phont_type.save
			redirect_to @phone_type
		else
			render 'new'
		end
	end

	private
		def phone_type_params
			params.require(:phone_type).permit(:name)
		end

end
