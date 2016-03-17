class VenuesController < ApplicationController

	before_action :set_venue, only: [:show, :edit, :destroy, :update]

	def index
		@venues = Venue.all
	end

	def new

	end

	def create
		@venue = Venue.new(venue_params)
		if @venue.save
			flash[:success] = "Venue Created"
			redirect_to venue_path(@venue)
		else
			render 'new'
		end
	end

	def search

	end

	def show

	end

	def edit

	end

	def destroy

	end


	def update

	end

	private

	def set_venue
		@venue = Venue.find(params[:id])
	end

	def venue_params
		params.require(:venue).permit(:name, :owner, :address)
	end

	
end
