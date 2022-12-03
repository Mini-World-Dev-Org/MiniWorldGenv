-- 作者: 0-0000 <github.com/0-0000/> <a259098@foxmail.com>
--[=[
formatenv.lua
用于格式化环境
例如你可以通过 formatEnv(genv) 来格式化游戏环境 genv 。
注: genv 来自 MiniExtend(github.com/0-0000/MiniExtend/) ，脚本本生不含 genv ，要想获得 genv ，参见 MiniExtend Core 。
函数返回的字符串可能非常长，建议输出到文件中，关于如何输出到文件也参见 MiniExtend Core。
]=]

-- 便于格式化的表
-- 修改其中的函数来改变格式化方式
local format = {}
format["key"] = function(key)
	if type(key) == "number" then
		return "["..tostring(key).."]"
	end
	local st = string.find(key, "[^%w_]")
	local char = string.byte(string.sub(key, 1, 1))
	if st or (48 <= char and char <= 57) then
		return '["'..key..'"]'
	end
	return key
end
format["nil"] = function(key)
	return format.key(key).."=nil"
end
format["boolean"] = function(key, boolean)
	return format.key(key).."="..tostring(boolean)
end
format["number"] = function(key, number)
	return format.key(key).."="..tostring(number)
end
format["string"] = function(key, string)
	return table.concat({format.key(key), '="', string, '"'})
end
format["function"] = function(key, func)
	return table.concat({format.key(key), "=function() return 0x", string.sub(tostring(func), 11), " end"})
end
format["userdata"] = function(key, userdata)
	local pcall_result, result = pcall(has__tostring, userdata)
	if not (pcall_result and result) then
		return table.concat({format.key(key), "=userdata(0x", string.sub(tostring(userdata), 11), ")"})
	else
		return table.concat({format.key(key), '=userdata("', tostring(userdata), '")'})
	end
end
format["thread"] = function(key, thread)
	return table.concat({format.key(key), "=thread(0x", string.sub(tostring(thread), 9), ")"})
end
format["table"] = function(key, _table)
	local pcall_result, result = pcall(has__tostring, _table)
	if not (pcall_result and result) then
		return table.concat({format.key(key), "={0x", string.sub(tostring(_table), 8), "}"})
	else
		return table.concat({format.key(key), '={"', tostring(_table), '"}'})
	end
end

-- 铺助函数
local function comp(a, b)
	local a_isnumber, b_isnumber = type(a) == "number", type(b) == "number"
	if not (a_isnumber or b_isnumber) then
		return a < b
	elseif a_isnumber then
		return b_isnumber and a < b or false
	else
		return false
	end
end
local function has__tostring(val)
	local mt = getmetatable(val)
	return mt and mt["__tostring"]
end

-- 核心函数，以 2 层深度遍历 env 并格式化
-- @param env {table} 遍历的环境表
-- @return {string} 格式化后的表
function formatEnv(env)
--
local str = {}

-- 排序环境 env 索引
local indexes = {}
for k in pairs(env) do
	table.insert(indexes, k)
end
table.sort(indexes, comp)

for _, k in ipairs(indexes) do
	local v = env[k]
	local _type = type(v)

	if _type == "table" and v ~= genv then
		local table_str = {}

		-- 排序表 v 索引
		local table_indexes = {}
		for k2 in pairs(v) do
			table.insert(table_indexes, k2)
		end
		table.sort(table_indexes, comp)

		-- 格式化表 v
		for _, k2 in ipairs(table_indexes) do
			local v2 = v[k2]
			table.insert(table_str, "\t"..format[type(v2)](k2, v2))
		end
		table_str = table.concat(table_str, ",\n")

		table.insert(str, table.concat({k, "={\n", table_str, "\n}"}))
	else
		table.insert(str, format[_type](k, v))
	end
end

return table.concat(str, ",\n")
--
end
