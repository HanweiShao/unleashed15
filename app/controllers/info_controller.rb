require 'uri'

class InfoController < ApplicationController
	def percentage
		
		pStr = params[:a]
		labelStr = params[:label]
		if(pStr != "")
			@ps = pStr.split(',')
		end
		
		@labelAry = ["GDP", "FDI", "Inflation" ,"Exchange Rate" ]
		#if(labelStr != "")
		#	@labelAry = labelStr.split(',') 		
		#end	
		
		puts @labelAry
	end	
	
end
