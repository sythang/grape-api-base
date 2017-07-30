class FbCrawler
	def initialize
		@oauth = Koala::Facebook::OAuth.new("269872540162565", "0cef039662bb2135b2a3c74bd608c8a5")
	end


	def crawl
		token = @oauth.get_app_access_token
		@graph = Koala::Facebook::API.new(token)

		cgv_data = @graph.get_connections("395143205624", "feed?fields=full_picture,message,created_time")
		cgv_data.each do |data|
			Item.create(image_url: [data["full_picture"]].flatten.first, message: data["message"])
		end
	end
end