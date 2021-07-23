require 'socket'
class TestController < ApplicationController
  def show_ip
  	@request_ip = request.ip
  	@request_remote_ip = request.remote_ip
	ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
	@server_ip = ip.ip_address if ip
  end
end
