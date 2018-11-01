require 'gserver'
class JenServer < GServer
	def initialize
		super(12345)
	end

	def serve(io)
		io.puts("yay Jenny")
		io.puts(Time.now.to_i)

		io.puts "getting log"
		io.puts get_logs
	end
	private
	def get_logs
		File.open("/var/log/check_connections.log") do |log|
			log.seek(-10000, IO::SEEK_END)
			log.gets
			log.read
		end
	end
end
