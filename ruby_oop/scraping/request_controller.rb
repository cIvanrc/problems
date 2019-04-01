require 'rest-client'

module RequestController
  def get(url)
    RestClient.get url
  end
end
