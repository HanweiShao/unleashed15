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
				
	end	
	
	def news
			@country = params[:c]
			url = "http://unleashedss.herokuapp.com/api/index?country=#{@country}"
            jsonStr = Net::HTTP.get_response(URI.parse(url))            
            data = jsonStr.body
            
			puts jsonStr
			
            jsonHash = JSON.parse(data)
			@score = jsonHash["totalScore"] * 2
			@newsAry = jsonHash["resultset"]
			@recommandAry = jsonHash["recomendations"]
			
			
			#@score = 3.64904866102933805 * 2
	end
	
end
