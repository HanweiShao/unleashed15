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
	
	def news
			url = "http://unleashedss.herokuapp.com/api/index?country=china"
            jsonStr = Net::HTTP.get_response(URI.parse(url))            
            data = jsonStr.body
            
            jsonHash = JSON.parse(data)
			@score = jsonHash["totalScore"] * 2
			@newsAry = jsonHash["resultset"]
			
			
			#@score = 3.64904866102933805 * 2
	end
	
end
