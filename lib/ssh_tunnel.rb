require "ssh_tunnel/version"
require "logger"

module SSHTunnel
  def self.create(to_port, from_host, from_port, logger: Logger.new($stdout))
    logger.info "Setting up tunnel: #{to_port} => #{from_host}:#{from_port}" if logger
    pid = spawn("ssh #{from_host} -L #{to_port}:#{from_host}:#{from_port} -N")
    logger.info "Started tunnel with pid #{pid}" if logger
    pid
  end
end
