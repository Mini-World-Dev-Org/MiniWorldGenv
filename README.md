# MiniWorldGenv

## 许可证
MiniWorldGenv 使用 GNU GPL 作为许可证，它强制代码开源和免费使用。  
目前 MiniWorldGenv 几乎不存在什么可开发的利益会违背 GNU GPL ，因为它的代码只有一个能格式化环境的功能，文档就更不用说了。  

## 简介
创建该仓库的目的是研究迷你世界的 lua 环境 `genv` 。  
对 `genv` 的研究都是使用 lua 脚本等正规手段进行的。  

## 定义
### MiniExtend
指 [MiniExtend](https://github.com/0-0000/MiniExtend) 开源库，这里使用了其中的两项内容。  
### `_GScriptFenv`
脚本环境，来自 MiniExtend ，脚本运行时的默认环境就是这个表，该表不像标准的 lua 环境，被内部脚本做了一点点的修改，详见 MiniExtend Core 。  

### `genv`
迷你世界的 lua 环境，来自 MiniExtend ， MiniExtend 直接给了你 `genv` 这个 `table` 。  
获得 `genv` 参见 MiniExtend Core 。  
实际上 `genv`, `io` 都不在游戏环境中，但使用 MiniExtend 允许你直接访问它们

## 现有成果
- *src/formatenv.lua*  
> `formatEnv(env)`  
> 以 2 层深度遍历 `env` 并格式化，返回格式化后的字符串。  
> 根据这个仓库的意义可知 `formatEnv(genv);` 是正常的使用方式。  
> 返回的字符串可能很长(大约 2733kb)，建议将格式化后的结果输出到文件。  
- *docs/genv.md*
> 记录 `genv` 中的值的意义，在以后可能会分离。  


## 开发
确定 `genv` 中的值(如 `ScriptSupportVariable`)的意义，然后在文档中记录。  
