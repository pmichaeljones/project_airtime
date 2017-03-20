class SponsorsController < ApplicationController

	def create
   new_sponsor = Sponsor.new(name: params[:sponsor])
   new_sponsor.save
   redirect_to dashboard_path
	end

	def destroy
    sponsor = Sponsor.find(params[:id])
    sponsor.delete
    redirect_to dashboard_path
	end

end
