require 'httparty'

class Aha
  include HTTParty

  def initialize(username, password, domain)
    @base_uri = "https://#{domain}.aha.io"
    @auth = { :username => username, :password => password }
    @headers = { "X-AHA-ACCOUNT" => domain }
  end

  def valid?
    self.class.get('/api/')
  end

  def releases
    aha_get('/api/v1/releases/')["releases"]
  end

  def release(release_id)
    aha_get("/api/v1/releases/#{release_id}")["release"]
  end

  def products
    aha_get('/api/v1/products/')["products"]
  end

  def product_releases(product_id)
    aha_get("/api/v1/products/#{product_id}/releases")["releases"]
  end

  def aha_get(route)
    self.class.get(@base_uri + route, { :basic_auth => @auth, :headers => @headers })
  end

end
