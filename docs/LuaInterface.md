# `LuaInterface`
<!-- 暂未完成 -->
## 函数
- `getApiId(self)`  
> 获取游戏 API id 。  
> - `self`:`{userdata<LuaInterface>}` `LuaInterface`  
> 如果实参不为 `LuaInterface` 则会报错。  
> - return:`{number}` 游戏 API id
- `getStdioRoot(self)`  
> 获取数据目录。  
> - `self`:`{userdata<LuaInterface>}` `LuaInterface`  
> 如果实参不为 `LuaInterface` 则会报错。  
> - return:`{string}` 数据目录
- `ispc(self)`  
> 返回设备是否是 PC(桌面端设备)。  
> - `self`:`{userdata<LuaInterface>}` `LuaInterface`  
> 如果实参不为 `LuaInterface` 则会报错。  
> - return:`{boolean}` `true` 表示设备为 PC ， `false` 表示设备不为 PC 。  
