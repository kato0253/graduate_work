require 'net/https'
require 'uri'

path = 'https://qiita.com/api/v2/items'

uri = URI.parse(path)
http = Net::HTTP.new(uri.host, uri.port)

http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

req = Net::HTTP::Get.new(uri.request_uri)

res = http.request(req)
puts res.code, res.msg
puts res.body
