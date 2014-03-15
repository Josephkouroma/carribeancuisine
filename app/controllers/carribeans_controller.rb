class CarribeansController < ApplicationController

	def index

		# if we have a search query, find pubs near that search qury pther wise show all pubs

		
		# @carribeans = Carribean.all
		# if there is a search find carribean near query
		if params[:search].present?

			# we are assigning an instance of our model to veriable @carribean
			@carribeans = Carribean.near(params[:search]).limit(100)

			if @carribeans.none?
				@carribeans = Carribean.order("name asc")
			end

		else 
			# @carribeans = Carribean.all
			@carribeans = Carribean.order("name asc")
			
		end
	end	

	def new
		@carribean = Carribean.new
	end

	def create
		@carribean = Carribean.new(carribean_params)
		if @carribean.save
			redirect_to root_path
		else
			render "new"
		end
	end


	def carribean_params
		params.require(:carribean).permit(:name, :address, :latitude, :longitude)
	end
end
