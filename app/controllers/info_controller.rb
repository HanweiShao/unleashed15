require 'uri'

class InfoController < ApplicationController
	def percentage
		
		p = params[:a]
		#p = p.gsub(',','%3B')
		@ps = p.split(',')
		puts @ps
	end	
	
end
