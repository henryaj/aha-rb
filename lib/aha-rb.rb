require 'httparty'

class Aha
  include HTTParty
  base_uri 'secure.aha.io'

  def initialize(username, password, domain)
    @auth = { :username => username, :password => password }
    @headers = { "X-AHA-ACCOUNT" => domain }
  end

  def releases
    self.class.get('/api/v1/releases/', {:basic_auth => @auth})["releases"]
  end

  def release(release_id)
    self.class.get("/api/v1/releases/#{release_id}", {:basic_auth => @auth})["release"]
  end

  def products
    self.class.get('/api/v1/products/', {:basic_auth => @auth})["products"]
  end

  def product_releases(product_id)
    self.class.get("/api/v1/products/#{product_id}/releases", {:basic_auth => @auth})["releases"]
  end

end
