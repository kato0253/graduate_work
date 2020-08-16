require 'droplet_kit'

token = '28efc75ae6e463708025aacabc14f744ad92c00a'
client = DropletKit::Client.new(access_token: "#{token}")
droplets = client.droplets.all
droplets.each do |droplet|
  p droplet
end
