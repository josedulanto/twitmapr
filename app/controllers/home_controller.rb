class HomeController < ApplicationController

	def index
		@tweets = Twitter.search('twitter', geocode: "19.43261,-99.13321,10km", count: 50, result_type: 'recent').statuses.keep_if{|s| s.geo.present?}
		render 'index'
	end

	def search
		q = params[:q].present? ? params[:q] : 'twitter'
		q = q.downcase.gsub(/@/,'')
		lat = params[:lat].present? ? params[:lat] : '19.43261' 
		lng = params[:lng].present? ? params[:lng] : '-99.13321' 
		logger.info("======================== #{q}")
		@tweets = Twitter.search(q, geocode: "#{lat},#{lng},10km", count: 50, result_type: 'recent').statuses.keep_if{|s| s.geo.present?}

		logger.info("======================== #{@tweets.inspect}")

		respond_to do |format|
			# format.html { render 'index' }
			format.js { render layout: nil }
		end
	end

end