class Article < ActiveRecord::Base

	def make_request
		Typhoeus.get(@@alchemy_url, params: {
      apikey: ENV["8c15734e073ee20dac4c76c02eb1317711e0b895"],
      text: content,
      maxRetrieve: 5,
      outputMode: "json"
    })
    words = JSON.parse(res.body)["keywords"].map do |w|
      w['text']
    end
    @keywords = words.join(" | ")
  end
  
end
# Typhoeus.get("www.google.com/search", {params: {
# 				q: @content
# 				}
# 			})
# 		res.body
# 	end