class PagesController < ApplicationController

	def about_us
	end	

	def contact_us
	end

	def chinese
    	@chinese_restaurants = Restaurant.where(category_id: 2)
	end		

	def greek
		@greek_restaurants = Restaurant.where(category_id: 3)
	end
	
	def italian
		@italian_restaurants = Restaurant.where(category_id: 5)
	end	
end
