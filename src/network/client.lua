local Socket = require "socket"
local Packer = require "network.packer"

local M = {}

M.__index = M

function M.new()
    local o = {}
	setmetatable(o, M)
	return o
end

function M:connect(ip, port)
   self.ip = ip
   self.port = port
   local sock = socket.tcp()
   local n,e = sock:connect(ip, port)
   self.sock = sock
end

function M:send(proto, msg)
   local proto_id = 2
   local packet = Packer.pack(proto_id, msg)
   self.sock:send(packet)
end

function M:recv()

end

function M:close()

end

return M
