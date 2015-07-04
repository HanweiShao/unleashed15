require 'uri'

class InfoController < ApplicationController
	def percentage
		
		p = params[:a]
		@ps = p.split(',')
		puts @ps
	end	
	
end
