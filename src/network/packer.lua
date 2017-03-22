-- 网络消息封包解包
local Utils = require "utils"

local M = {}

-- 包格式
-- 两字节包长
-- 两字节协议号
-- 两字符字符串长度
-- 字符串内容
function M.pack(proto_id, msg)
    local params_str = Utils.table_2_str(msg)
	print(params_str)
	local len = 2 + 2 + #params_str
	local data = string.pack(">h>hP", len, proto_id, params_str)
    return data	
end

function M.unpack()

end

return M
