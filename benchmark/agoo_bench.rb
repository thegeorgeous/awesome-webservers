$LOAD_PATH << '.'

require 'agoo'
require 'hello'

server = Agoo::Server.new(6460, 'root', thread_count: 0)

server.handle(:GET, "/hello", Hello.new)
server.start()
