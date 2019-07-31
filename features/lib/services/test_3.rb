require 'net/http'
require 'uri'
require 'json'

class BJSSTest3
  include Capybara::DSL

  def post_url url, user
    uri = URI.parse(url)
    header = {'Content-Type': 'application/json'}
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = user.to_json
    response = http.request(request)
    response
  end

  def create_entry name, salary, age
    user = {
      "name":name + Time.now.strftime("%Y%m%d%H%M%S"),
      "salary":salary,
      "age":age
    }
    user
  end

end
