class ApplicationController < ActionController::Base

	def new
  end
	def index
	       	connection = HTTP
	#	fail LcboError, product_response.error_message unless product_response.success?

    @details = connection.get(url).parse(:json).fetch('results')
	end

	def url
      "https://itunes.apple.com/lookup?id=909253&entity=album"
  end

	def name
      details['name']
    end

  def tags
      details.fetch('tags', '').split(' ')
  end




end
