require 'webrick'

PORT = ENV["PORT_SELECTED"]

# BindAddress '0.0.0.0' ensures the server listens on all container network interfaces
server = WEBrick::HTTPServer.new(
  Port: PORT,
  BindAddress: '0.0.0.0'
)

server.mount_proc '/' do |req, res|
  res.status = 200
  res['Content-Type'] = 'text/plain'
  res.body = "Server started in port #{PORT}!"
end

trap 'INT' do
  server.shutdown
end

puts "Server started in port #{PORT}"

server.start
